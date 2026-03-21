/**
 ******************************************************************************
 * @file     app_main.h
 * @brief    BMS Logger application entry point – FreeRTOS task declarations.
 *
 * Creates four tasks:
 *   - @c task_uart   – UART receive processing and packet callback.
 *   - @c task_logger – FatFS CSV write from logger queue.
 *   - @c task_usb    – USB connection monitoring and MSD start/stop.
 *   - @c task_led    – LED status indicator.
 ******************************************************************************
 */

#ifndef __APP_MAIN_H
#define __APP_MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

/** Maximum data length held in a single logger queue message (bytes). */
#define LOGGER_QUEUE_DATA_SIZE   128u
/** Depth of the logger message queue. */
#define LOGGER_QUEUE_DEPTH       4u

/**
 * @brief  Logger queue message type.
 *
 * Passed from the UART packet callback to @c task_logger via the FreeRTOS
 * queue.
 */
typedef struct
{
    char     data[LOGGER_QUEUE_DATA_SIZE]; /**< CSV data to be written.  */
    uint16_t len;                          /**< Valid byte count in data. */
} logger_msg_t;

/** Handle for the logger queue (used by the packet callback). */
extern QueueHandle_t g_logger_queue;

/**
 * @brief  Initialise all application modules and register the UART packet
 *         callback.  Must be called before the FreeRTOS scheduler starts.
 */
void app_main_init(void);

/**
 * @brief  Create all FreeRTOS application tasks.
 *
 * Called from within @c freertos_task_create() (or equivalent) after the
 * scheduler is about to start.
 */
void app_tasks_create(void);

/* ---- Task function prototypes ------------------------------------------- */
void task_uart_func  (void *pvParameters);
void task_logger_func(void *pvParameters);
void task_usb_func   (void *pvParameters);
void task_led_func   (void *pvParameters);

#ifdef __cplusplus
}
#endif

#endif /* __APP_MAIN_H */
