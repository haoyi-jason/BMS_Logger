/**
 ******************************************************************************
 * @file     bsp_led.h
 * @brief    LED BSP – single LED on PC13 (active-low).
 ******************************************************************************
 */

#ifndef __BSP_LED_H
#define __BSP_LED_H

#ifdef __cplusplus
extern "C" {
#endif

#include "at32f413.h"

/**
 * @brief  Initialise PC13 as push-pull output (LED off on entry).
 */
void bsp_led_init(void);

/**
 * @brief  Turn the LED on (drive PC13 low).
 */
void bsp_led_on(void);

/**
 * @brief  Turn the LED off (drive PC13 high).
 */
void bsp_led_off(void);

/**
 * @brief  Toggle the LED state.
 */
void bsp_led_toggle(void);

#ifdef __cplusplus
}
#endif

#endif /* __BSP_LED_H */
