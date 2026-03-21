/**
 ******************************************************************************
 * @file     bsp_uart.c
 * @brief    UART1 BSP – DMA circular-buffer receive with IDLE-line detection.
 ******************************************************************************
 */

#include "bsp_uart.h"
#include <stddef.h>

/* ---- public DMA buffer --------------------------------------------------- */
uint8_t uart1_dma_buf[UART1_DMA_BUF_SIZE];

/* ---- private state ------------------------------------------------------- */
static void (*s_idle_cb)(void) = NULL;

/* ---- helpers ------------------------------------------------------------- */

/** Configure DMA1_CHANNEL5 for UART1 RX in circular mode. */
static void uart_dma_init(void)
{
    dma_init_type dma_cfg;

    /* Enable DMA1 clock */
    crm_periph_clock_enable(CRM_DMA1_PERIPH_CLOCK, TRUE);

    /* Map UART1_RX to DMA1 channel5 via flexible-request engine */
    dma_flexible_config(DMA1, FLEX_CHANNEL5, DMA_FLEXIBLE_UART1_RX);

    /* Configure the channel */
    dma_reset(DMA1_CHANNEL5);
    dma_default_para_init(&dma_cfg);

    dma_cfg.peripheral_base_addr  = (uint32_t)(&USART1->dt);
    dma_cfg.memory_base_addr      = (uint32_t)uart1_dma_buf;
    dma_cfg.direction             = DMA_DIR_PERIPHERAL_TO_MEMORY;
    dma_cfg.buffer_size           = UART1_DMA_BUF_SIZE;
    dma_cfg.peripheral_inc_enable = FALSE;
    dma_cfg.memory_inc_enable     = TRUE;
    dma_cfg.peripheral_data_width = DMA_PERIPHERAL_DATA_WIDTH_BYTE;
    dma_cfg.memory_data_width     = DMA_MEMORY_DATA_WIDTH_BYTE;
    dma_cfg.loop_mode_enable      = TRUE;   /* circular */
    dma_cfg.priority              = DMA_PRIORITY_MEDIUM;

    dma_init(DMA1_CHANNEL5, &dma_cfg);
    dma_channel_enable(DMA1_CHANNEL5, TRUE);
}

/* ---- public API ---------------------------------------------------------- */

void bsp_uart_init(uint32_t baudrate)
{
    gpio_init_type gpio_cfg;

    /* Enable GPIO A and USART1 clocks */
    crm_periph_clock_enable(CRM_GPIOA_PERIPH_CLOCK, TRUE);
    crm_periph_clock_enable(CRM_USART1_PERIPH_CLOCK, TRUE);

    /* PA9 – USART1 TX (MUX push-pull) */
    gpio_default_para_init(&gpio_cfg);
    gpio_cfg.gpio_drive_strength = GPIO_DRIVE_STRENGTH_MODERATE;
    gpio_cfg.gpio_out_type       = GPIO_OUTPUT_PUSH_PULL;
    gpio_cfg.gpio_mode           = GPIO_MODE_MUX;
    gpio_cfg.gpio_pins           = GPIO_PINS_9;
    gpio_cfg.gpio_pull           = GPIO_PULL_NONE;
    gpio_init(GPIOA, &gpio_cfg);

    /* PA10 – USART1 RX (floating input) */
    gpio_cfg.gpio_mode  = GPIO_MODE_INPUT;
    gpio_cfg.gpio_pins  = GPIO_PINS_10;
    gpio_cfg.gpio_pull  = GPIO_PULL_NONE;
    gpio_init(GPIOA, &gpio_cfg);

    /* Configure USART1 */
    usart_init(USART1, baudrate, USART_DATA_8BITS, USART_STOP_1_BIT);
    usart_parity_selection_config(USART1, USART_PARITY_NONE);
    usart_hardware_flow_control_set(USART1, USART_HARDWARE_FLOW_NONE);
    usart_transmitter_enable(USART1, TRUE);
    usart_receiver_enable(USART1, TRUE);

    /* Enable USART1 DMA RX request */
    usart_dma_receiver_enable(USART1, TRUE);

    /* Enable IDLE interrupt */
    usart_interrupt_enable(USART1, USART_IDLE_INT, TRUE);

    /* Configure NVIC for USART1 */
    nvic_irq_enable(USART1_IRQn, 6, 0);

    usart_enable(USART1, TRUE);

    /* Start DMA */
    uart_dma_init();
}

void bsp_uart_set_baudrate(uint32_t baudrate)
{
    /* Disable DMA, reconfigure UART, re-enable DMA */
    dma_channel_enable(DMA1_CHANNEL5, FALSE);
    usart_enable(USART1, FALSE);

    usart_init(USART1, baudrate, USART_DATA_8BITS, USART_STOP_1_BIT);
    usart_parity_selection_config(USART1, USART_PARITY_NONE);
    usart_hardware_flow_control_set(USART1, USART_HARDWARE_FLOW_NONE);
    usart_transmitter_enable(USART1, TRUE);
    usart_receiver_enable(USART1, TRUE);
    usart_dma_receiver_enable(USART1, TRUE);
    usart_interrupt_enable(USART1, USART_IDLE_INT, TRUE);

    /* Restart DMA channel at position 0 */
    dma_reset(DMA1_CHANNEL5);
    uart_dma_init();

    usart_enable(USART1, TRUE);
}

void bsp_uart_register_idle_callback(void (*cb)(void))
{
    s_idle_cb = cb;
}

uint16_t bsp_uart_get_dma_pos(void)
{
    return (uint16_t)(UART1_DMA_BUF_SIZE - dma_data_number_get(DMA1_CHANNEL5));
}

void bsp_uart_idle_handler(void)
{
    /* Clear the IDLE flag by reading SR then DR */
    (void)USART1->sts;
    (void)USART1->dt;

    if (s_idle_cb != NULL)
    {
        s_idle_cb();
    }
}
