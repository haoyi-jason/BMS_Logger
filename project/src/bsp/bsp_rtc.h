/**
 ******************************************************************************
 * @file     bsp_rtc.h
 * @brief    RTC BSP – initialisation and current-time accessor.
 *
 * Thin wrapper around the existing rtc.c / rtc.h calendar driver.
 ******************************************************************************
 */

#ifndef __BSP_RTC_H
#define __BSP_RTC_H

#ifdef __cplusplus
extern "C" {
#endif

#include "at32f413.h"
#include "rtc.h"

/**
 * @brief  Initialise the RTC with a default time (2025-01-01 00:00:00) if it
 *         has not been previously set (BPR marker absent).
 */
void bsp_rtc_init(void);

/**
 * @brief  Refresh the global @c calendar variable with the current RTC time.
 *
 * After this call, @c calendar.year / .month / .date / .hour / .min / .sec
 * reflect the current date and time.
 */
void bsp_rtc_get_time(void);

#ifdef __cplusplus
}
#endif

#endif /* __BSP_RTC_H */
