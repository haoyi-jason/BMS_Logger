/**
 ******************************************************************************
 * @file     usb_msd.c
 * @brief    USB Mass Storage Device – start/stop API and SD-access guard.
 ******************************************************************************
 */

#include "usb_msd.h"

/* ---- private state ------------------------------------------------------- */
static volatile uint8_t s_msd_active = 0u;

/* ---- public API ---------------------------------------------------------- */

void usb_msd_init(void)
{
    s_msd_active = 0u;
}

void usb_msd_start(void)
{
    s_msd_active = 1u;
}

void usb_msd_stop(void)
{
    s_msd_active = 0u;
}

uint8_t usb_msd_is_active(void)
{
    return s_msd_active;
}
