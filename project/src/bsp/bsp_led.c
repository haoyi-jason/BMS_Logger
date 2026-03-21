/**
 ******************************************************************************
 * @file     bsp_led.c
 * @brief    LED BSP – single LED on PC13 (active-low).
 ******************************************************************************
 */

#include "bsp_led.h"

void bsp_led_init(void)
{
    gpio_init_type gpio_cfg;

    crm_periph_clock_enable(CRM_GPIOC_PERIPH_CLOCK, TRUE);

    gpio_default_para_init(&gpio_cfg);
    gpio_cfg.gpio_drive_strength = GPIO_DRIVE_STRENGTH_MODERATE;
    gpio_cfg.gpio_out_type       = GPIO_OUTPUT_PUSH_PULL;
    gpio_cfg.gpio_mode           = GPIO_MODE_OUTPUT;
    gpio_cfg.gpio_pins           = GPIO_PINS_13;
    gpio_cfg.gpio_pull           = GPIO_PULL_NONE;
    gpio_init(GPIOC, &gpio_cfg);

    /* LED off initially (active-low, so set pin high) */
    gpio_bits_set(GPIOC, GPIO_PINS_13);
}

void bsp_led_on(void)
{
    /* Active-low: drive pin low to illuminate LED */
    gpio_bits_reset(GPIOC, GPIO_PINS_13);
}

void bsp_led_off(void)
{
    /* Active-low: drive pin high to extinguish LED */
    gpio_bits_set(GPIOC, GPIO_PINS_13);
}

void bsp_led_toggle(void)
{
    /* Read output data register and toggle */
    if (gpio_output_data_bit_read(GPIOC, GPIO_PINS_13) == RESET)
    {
        gpio_bits_set(GPIOC, GPIO_PINS_13);
    }
    else
    {
        gpio_bits_reset(GPIOC, GPIO_PINS_13);
    }
}
