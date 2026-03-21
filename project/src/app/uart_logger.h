/**
 ******************************************************************************
 * @file     uart_logger.h
 * @brief    UART1 receive API – DMA ring-buffer + IDLE-triggered packet callback.
 *
 * This module sits above the BSP UART layer.  It owns a ring-buffer that is
 * filled by the DMA/IDLE interrupt path and processes received data inside a
 * dedicated FreeRTOS task.
 ******************************************************************************
 */

#ifndef __UART_LOGGER_H
#define __UART_LOGGER_H

#ifdef __cplusplus
extern "C" {
#endif

#include "at32f413.h"
#include "FreeRTOS.h"
#include "semphr.h"

/**
 * @brief  Initialise UART1 at the given baud rate and set up the receive
 *         ring-buffer + IDLE semaphore.
 *
 * Call once, before the FreeRTOS scheduler is started (or from a task before
 * @c uart_logger_process is first invoked).
 *
 * @param  baudrate  Desired baud rate (default: 115200).
 */
void uart_logger_init(uint32_t baudrate);

/**
 * @brief  Dynamically change the UART1 baud rate.
 * @param  baud  New baud rate.
 */
void uart_logger_set_baudrate(uint32_t baud);

/**
 * @brief  Register a user-supplied packet callback.
 *
 * The callback is invoked from @c uart_logger_process (task context) each
 * time an IDLE-delimited burst of data has been received.  Even when the
 * DMA ring-buffer wraps, the data is assembled into a single contiguous
 * temporary buffer before the callback is called, so the callback always
 * receives one complete block per IDLE event.
 *
 * @param  cb  Pointer to callback: @c void cb(const uint8_t *data, uint16_t len).
 *             Pass NULL to deregister.
 */
void uart_logger_register_packet_callback(void (*cb)(const uint8_t *, uint16_t));

/**
 * @brief  Blocking call that waits for an IDLE event, then reads all pending
 *         bytes from the DMA ring-buffer and invokes the registered callback.
 *
 * Intended to be the body of @c task_uart:
 * @code
 *   while (1) { uart_logger_process(); }
 * @endcode
 */
void uart_logger_process(void);

/**
 * @brief  Called from the USART1 IDLE ISR via @c bsp_uart_idle_handler.
 *
 * Posts to the internal binary semaphore (ISR-safe).
 */
void uart_logger_notify_from_isr(void);

#ifdef __cplusplus
}
#endif

#endif /* __UART_LOGGER_H */
