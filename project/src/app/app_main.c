/**
 ******************************************************************************
 * @file     app_main.c
 * @brief    BMS Logger application entry point – FreeRTOS tasks.
 ******************************************************************************
 */

#include "app_main.h"
#include "uart_logger.h"
#include "logger.h"
#include "usb_msd.h"
#include "bsp_led.h"
#include "bsp_rtc.h"
#include "usb_app.h"
#include "usbd_core.h"
#include "usb_std.h"
#include <string.h>
#include <stdio.h>

/* ---- external USB device handle (declared in usb_app.c) ------------------ */
extern usbd_core_type usb_core_dev;

/* ---- logger queue -------------------------------------------------------- */
QueueHandle_t g_logger_queue = NULL;

/* ---- LED blink periods (ms) ---------------------------------------------- */
#define LED_PERIOD_IDLE_MS    500u   /* 1 Hz: 500 ms half-period */
#define LED_PERIOD_WRITE_MS   100u   /* 5 Hz: 100 ms half-period */

/* ---- private: UART packet callback (task context) ------------------------ */

/**
 * @brief  Called by @c uart_logger_process for every received IDLE burst.
 *
 * Copies the raw bytes into a @c logger_msg_t and posts it to the logger
 * queue so that @c task_logger can persist the data.
 */
static void on_uart_packet(const uint8_t *data, uint16_t len)
{
    if (g_logger_queue == NULL || len == 0u)
    {
        return;
    }

    logger_msg_t msg;
    uint16_t copy_len = (len < LOGGER_QUEUE_DATA_SIZE) ? len : LOGGER_QUEUE_DATA_SIZE;
    memcpy(msg.data, data, copy_len);
    msg.len = copy_len;

    /* Non-blocking send – drop the message if the queue is full */
    xQueueSend(g_logger_queue, &msg, 0);
}

/* ---- public API ---------------------------------------------------------- */

void app_main_init(void)
{
    /* LED */
    bsp_led_init();

    /* RTC */
    bsp_rtc_init();

    /* USB MSD state machine */
    usb_msd_init();

    /* Logger queue */
    g_logger_queue = xQueueCreate(LOGGER_QUEUE_DEPTH, sizeof(logger_msg_t));
    configASSERT(g_logger_queue != NULL);

    /* UART logger (115200 default) */
    uart_logger_init(115200u);
    uart_logger_register_packet_callback(on_uart_packet);

    /* Mount FatFS and open today's log file */
    logger_init();
}

void app_tasks_create(void)
{
    xTaskCreate(task_uart_func,   "tUART",   256, NULL, 3, NULL);
    xTaskCreate(task_logger_func, "tLOG",    256, NULL, 2, NULL);
    xTaskCreate(task_usb_func,    "tUSB",    256, NULL, 2, NULL);
    xTaskCreate(task_led_func,    "tLED",    128, NULL, 1, NULL);
}

/* ---- Task implementations ------------------------------------------------ */

/**
 * @brief  UART receive task.
 *
 * Blocks until an IDLE-delimited packet arrives, then invokes the registered
 * packet callback (@c on_uart_packet) which queues the data for the logger.
 */
void task_uart_func(void *pvParameters)
{
    (void)pvParameters;
    for (;;)
    {
        uart_logger_process(); /* blocks on IDLE semaphore */
    }
}

/**
 * @brief  Logger write task.
 *
 * Blocks on the logger queue; for each dequeued message calls @c logger_write.
 */
void task_logger_func(void *pvParameters)
{
    (void)pvParameters;
    logger_msg_t msg;

    for (;;)
    {
        if (xQueueReceive(g_logger_queue, &msg, portMAX_DELAY) == pdTRUE)
        {
            logger_write(msg.data, msg.len);
        }
    }
}

/**
 * @brief  USB monitoring task.
 *
 * Polls the USB connection state.  Transitions into MSD-active mode when the
 * host enumerates the device, and back to normal when the cable is removed.
 */
void task_usb_func(void *pvParameters)
{
    (void)pvParameters;
    uint8_t was_configured = 0u;

    for (;;)
    {
        /* USB application-layer housekeeping.
         * wk_usb_app_task() is the AT32 Workbench-generated USB processing
         * hook; its "wk_" prefix is a project-wide naming convention. */
        wk_usb_app_task();

        usbd_conn_state state = usbd_connect_state_get(&usb_core_dev);
        uint8_t is_configured = (state == USB_CONN_STATE_CONFIGURED) ? 1u : 0u;

        if (is_configured && !was_configured)
        {
            /* USB just became active: flush & close FatFS, then signal MSD */
            logger_deinit();
            usb_msd_start();
        }
        else if (!is_configured && was_configured)
        {
            /* USB disconnected: stop MSD, re-mount FatFS */
            usb_msd_stop();
            logger_init();
        }

        was_configured = is_configured;
        vTaskDelay(pdMS_TO_TICKS(10));
    }
}

/**
 * @brief  LED status indicator task.
 *
 * Selects the blink pattern based on the current system state:
 *   - USB MSD active  → constant on
 *   - Logger writing  → 5 Hz blink
 *   - Idle / UART RX  → 1 Hz blink
 */
void task_led_func(void *pvParameters)
{
    (void)pvParameters;

    for (;;)
    {
        if (usb_msd_is_active())
        {
            /* Constant on */
            bsp_led_on();
            vTaskDelay(pdMS_TO_TICKS(50));
        }
        else if (logger_is_writing())
        {
            /* 5 Hz blink */
            bsp_led_toggle();
            vTaskDelay(pdMS_TO_TICKS(LED_PERIOD_WRITE_MS));
        }
        else
        {
            /* 1 Hz blink */
            bsp_led_toggle();
            vTaskDelay(pdMS_TO_TICKS(LED_PERIOD_IDLE_MS));
        }
    }
}
