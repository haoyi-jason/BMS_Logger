/**
 ******************************************************************************
 * @file     usb_msd.h
 * @brief    USB Mass Storage Device – start/stop API and SD-access mutex.
 *
 * When USB MSD mode is active (USB enumerated and host accessing the drive),
 * calls to @c logger_write must return @c LOGGER_BUSY to prevent concurrent
 * FatFS / raw-sector access conflicts.
 ******************************************************************************
 */

#ifndef __USB_MSD_H
#define __USB_MSD_H

#ifdef __cplusplus
extern "C" {
#endif

#include "at32f413.h"

/**
 * @brief  Initialise the USB MSD module (create mutex, set inactive state).
 *
 * Call once before the FreeRTOS scheduler starts.
 */
void usb_msd_init(void);

/**
 * @brief  Signal that USB MSD is now active.
 *
 * Causes @c usb_msd_is_active() to return non-zero.  The logger layer must
 * deinit FatFS before calling this function to ensure a clean hand-off.
 */
void usb_msd_start(void);

/**
 * @brief  Signal that USB MSD has stopped.
 *
 * Clears the active flag so the logger can resume writing.
 */
void usb_msd_stop(void);

/**
 * @brief  Query whether USB MSD is currently active.
 * @return Non-zero if MSD is active, zero otherwise.
 */
uint8_t usb_msd_is_active(void);

#ifdef __cplusplus
}
#endif

#endif /* __USB_MSD_H */
