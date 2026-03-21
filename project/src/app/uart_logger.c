/**
 ******************************************************************************
 * @file     uart_logger.c
 * @brief    UART1 receive API – DMA ring-buffer + IDLE-triggered packet callback.
 ******************************************************************************
 */

#include "uart_logger.h"
#include "bsp_uart.h"
#include <string.h>

/* ---- private state ------------------------------------------------------- */
static SemaphoreHandle_t s_idle_sem     = NULL;
static uint16_t          s_old_pos      = 0u;
static void (*s_packet_cb)(const uint8_t *, uint16_t) = NULL;

/* ---- BSP idle callback (called from USART1 IDLE ISR) --------------------- */

static void uart_idle_isr_cb(void)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    if (s_idle_sem != NULL)
    {
        xSemaphoreGiveFromISR(s_idle_sem, &xHigherPriorityTaskWoken);
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    }
}

/* ---- public API ---------------------------------------------------------- */

void uart_logger_init(uint32_t baudrate)
{
    s_old_pos  = 0u;
    s_packet_cb = NULL;

    s_idle_sem = xSemaphoreCreateBinary();
    configASSERT(s_idle_sem != NULL);

    /* Register ISR callback with BSP layer */
    bsp_uart_register_idle_callback(uart_idle_isr_cb);

    /* Initialise the hardware */
    bsp_uart_init(baudrate);
}

void uart_logger_set_baudrate(uint32_t baud)
{
    bsp_uart_set_baudrate(baud);
    s_old_pos = 0u;
}

void uart_logger_register_packet_callback(void (*cb)(const uint8_t *, uint16_t))
{
    s_packet_cb = cb;
}

void uart_logger_notify_from_isr(void)
{
    uart_idle_isr_cb();
}

void uart_logger_process(void)
{
    /* Block until the IDLE interrupt signals that new bytes have arrived */
    if (xSemaphoreTake(s_idle_sem, portMAX_DELAY) != pdTRUE)
    {
        return;
    }

    uint16_t pos = bsp_uart_get_dma_pos();

    if (pos == s_old_pos)
    {
        return; /* spurious wakeup */
    }

    if (s_packet_cb != NULL)
    {
        if (pos > s_old_pos)
        {
            /* Linear region – pass directly to callback */
            s_packet_cb(&uart1_dma_buf[s_old_pos], pos - s_old_pos);
        }
        else
        {
            /*
             * Wrap-around: the DMA write pointer has wrapped.  Copy both
             * segments into a contiguous stack buffer so the callback always
             * receives a single, contiguous data block.
             */
            uint16_t seg1 = UART1_DMA_BUF_SIZE - s_old_pos;
            uint16_t total = seg1 + pos;
            if (total <= UART1_DMA_BUF_SIZE)
            {
                uint8_t tmp[UART1_DMA_BUF_SIZE];
                memcpy(tmp,         &uart1_dma_buf[s_old_pos], seg1);
                memcpy(tmp + seg1,  &uart1_dma_buf[0],         pos);
                s_packet_cb(tmp, total);
            }
        }
    }

    s_old_pos = pos;
}
