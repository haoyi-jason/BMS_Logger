/**
 ******************************************************************************
 * @file     logger.h
 * @brief    FatFS CSV logger – file API with RTC-based filename.
 *
 * Files are stored on the SD card under the name @c YYYYMMDD.CSV, derived
 * from the current RTC date.  A header comment line is prepended whenever a
 * new file is created.
 *
 * A FreeRTOS mutex serialises concurrent access to the FatFS layer.  When USB
 * MSD mode is active the function immediately returns @c LOGGER_BUSY.
 ******************************************************************************
 */

#ifndef __LOGGER_H
#define __LOGGER_H

#ifdef __cplusplus
extern "C" {
#endif

#include "at32f413.h"
#include "ff.h"

/** Status codes returned by @c logger_write. */
typedef enum
{
    LOGGER_OK   = 0, /**< Data written successfully.                        */
    LOGGER_BUSY = 1, /**< USB MSD active – FatFS access suppressed.         */
    LOGGER_ERR  = 2  /**< FatFS or SD card error.                           */
} logger_status_t;

/**
 * @brief  Mount FatFS, open (or create) today's CSV file, and write a boot
 *         header line.
 *
 * Safe to call repeatedly; subsequent calls are no-ops when already mounted.
 *
 * @return @c LOGGER_OK on success, @c LOGGER_ERR otherwise.
 */
logger_status_t logger_init(void);

/**
 * @brief  Flush, close the current file, and unmount FatFS.
 */
void logger_deinit(void);

/**
 * @brief  Append @p len bytes from @p data to the current CSV file.
 *
 * @param  data  Pointer to data buffer.
 * @param  len   Number of bytes to write.
 * @return @c LOGGER_OK, @c LOGGER_BUSY (USB MSD active), or @c LOGGER_ERR.
 */
logger_status_t logger_write(const char *data, uint16_t len);

/**
 * @brief  Return non-zero while a @c logger_write call is in progress.
 *
 * Used by the LED task to select the "fast blink" state.
 */
uint8_t logger_is_writing(void);

#ifdef __cplusplus
}
#endif

#endif /* __LOGGER_H */
