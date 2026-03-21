/**
 ******************************************************************************
 * @file     bsp_uart.h
 * @brief    UART1 BSP – DMA circular-buffer receive with IDLE-line detection.
 *
 * Configures USART1 (PA9/PA10) at the requested baud rate with DMA1_CHANNEL5
 * (flexible-request UART1_RX) running in circular mode.  A USART1 IDLE-line
 * interrupt fires at the end of each incoming burst and updates an internal
 * head pointer so callers can extract the freshly received bytes.
 ******************************************************************************
 */

#ifndef __BSP_UART_H
#define __BSP_UART_H

#ifdef __cplusplus
extern "C" {
#endif

#include "at32f413.h"

/** Size of the DMA receive circular buffer (bytes). */
#define UART1_DMA_BUF_SIZE   256u

/** Raw DMA ring buffer – do not write from application code. */
extern uint8_t uart1_dma_buf[UART1_DMA_BUF_SIZE];

/**
 * @brief  Initialise USART1 with DMA circular RX and IDLE-line interrupt.
 * @param  baudrate  Desired baud rate (e.g. 115200).
 */
void bsp_uart_init(uint32_t baudrate);

/**
 * @brief  Change the USART1 baud rate at run-time.
 * @note   Stops and restarts the DMA channel.
 * @param  baudrate  New baud rate.
 */
void bsp_uart_set_baudrate(uint32_t baudrate);

/**
 * @brief  Register an application-level IDLE callback.
 *
 * The callback is invoked from the USART1 IDLE interrupt (ISR context) each
 * time the bus goes idle.  Implementations MUST be ISR-safe (i.e. only use
 * FreeRTOS "FromISR" API variants).
 *
 * @param  cb  Function pointer; may be NULL to unregister.
 */
void bsp_uart_register_idle_callback(void (*cb)(void));

/**
 * @brief  Return the current DMA write position within uart1_dma_buf.
 *
 * Position = UART1_DMA_BUF_SIZE − remaining DMA counter.
 *
 * @return Position in [0, UART1_DMA_BUF_SIZE).
 */
uint16_t bsp_uart_get_dma_pos(void);

/**
 * @brief  Must be called from USART1_IRQHandler to service the IDLE flag.
 */
void bsp_uart_idle_handler(void);

#ifdef __cplusplus
}
#endif

#endif /* __BSP_UART_H */
