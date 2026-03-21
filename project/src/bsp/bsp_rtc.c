/**
 ******************************************************************************
 * @file     bsp_rtc.c
 * @brief    RTC BSP – thin wrapper around the existing calendar driver.
 ******************************************************************************
 */

#include "bsp_rtc.h"

void bsp_rtc_init(void)
{
    calendar_type cal_default;

    /* Use 2025-01-01 00:00:00 as the default time if RTC is uninitialised */
    cal_default.year  = 2025;
    cal_default.month = 1;
    cal_default.date  = 1;
    cal_default.hour  = 0;
    cal_default.min   = 0;
    cal_default.sec   = 0;
    cal_default.week  = 3; /* Wednesday */

    rtc_init(&cal_default);
}

void bsp_rtc_get_time(void)
{
    rtc_time_get();
}
