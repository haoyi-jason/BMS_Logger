/**
 ******************************************************************************
 * @file     logger.c
 * @brief    FatFS CSV logger – file API with RTC-based filename.
 ******************************************************************************
 */

#include "logger.h"
#include "usb_msd.h"
#include "bsp_rtc.h"
#include "FreeRTOS.h"
#include "semphr.h"
#include <stdio.h>
#include <string.h>

/* ---- private state ------------------------------------------------------- */
static FATFS     s_fs;
static FIL       s_file;
static uint8_t   s_mounted   = 0u;
static uint8_t   s_file_open = 0u;
static volatile uint8_t s_writing = 0u;

static SemaphoreHandle_t s_mutex = NULL;

/* ---- helpers ------------------------------------------------------------- */

/** Build filename "YYYYMMDD.CSV" from the current RTC date into @p buf. */
static void build_filename(char *buf, size_t buf_size)
{
    bsp_rtc_get_time();
    snprintf(buf, buf_size, "%04u%02u%02u.CSV",
             (unsigned)calendar.year,
             (unsigned)calendar.month,
             (unsigned)calendar.date);
}

/* ---- public API ---------------------------------------------------------- */

logger_status_t logger_init(void)
{
    if (s_mounted)
    {
        return LOGGER_OK; /* already initialised */
    }

    /* Create mutex on first call */
    if (s_mutex == NULL)
    {
        s_mutex = xSemaphoreCreateMutex();
        if (s_mutex == NULL)
        {
            return LOGGER_ERR;
        }
    }

    /* Mount drive 0 */
    FRESULT fr = f_mount(&s_fs, "0:", 1);
    if (fr != FR_OK)
    {
        return LOGGER_ERR;
    }
    s_mounted = 1u;

    /* Open or create today's CSV file */
    char fname[16];
    build_filename(fname, sizeof(fname));

    BYTE mode = FA_WRITE | FA_OPEN_APPEND;
    fr = f_open(&s_file, fname, mode);
    if (fr != FR_OK)
    {
        /* Try to create it fresh */
        fr = f_open(&s_file, fname, FA_WRITE | FA_CREATE_NEW);
        if (fr != FR_OK)
        {
            f_mount(NULL, "0:", 0);
            s_mounted = 0u;
            return LOGGER_ERR;
        }
    }
    s_file_open = 1u;

    /* Write boot header if we are at the beginning of the file */
    if (f_size(&s_file) == 0)
    {
        bsp_rtc_get_time();
        char hdr[64];
        snprintf(hdr, sizeof(hdr),
                 "# BMS_Logger start %04u-%02u-%02u %02u:%02u:%02u\r\n",
                 (unsigned)calendar.year,
                 (unsigned)calendar.month,
                 (unsigned)calendar.date,
                 (unsigned)calendar.hour,
                 (unsigned)calendar.min,
                 (unsigned)calendar.sec);
        UINT written;
        f_write(&s_file, hdr, (UINT)strlen(hdr), &written);
        f_sync(&s_file);
    }

    return LOGGER_OK;
}

void logger_deinit(void)
{
    if (s_mutex != NULL)
    {
        xSemaphoreTake(s_mutex, portMAX_DELAY);
    }

    if (s_file_open)
    {
        f_sync(&s_file);
        f_close(&s_file);
        s_file_open = 0u;
    }

    if (s_mounted)
    {
        f_mount(NULL, "0:", 0);
        s_mounted = 0u;
    }

    if (s_mutex != NULL)
    {
        xSemaphoreGive(s_mutex);
    }
}

logger_status_t logger_write(const char *data, uint16_t len)
{
    if (usb_msd_is_active())
    {
        return LOGGER_BUSY;
    }

    if (!s_mounted || !s_file_open || len == 0u)
    {
        return LOGGER_ERR;
    }

    if (xSemaphoreTake(s_mutex, pdMS_TO_TICKS(100)) != pdTRUE)
    {
        return LOGGER_BUSY;
    }

    /* Double-check after acquiring mutex */
    if (usb_msd_is_active())
    {
        xSemaphoreGive(s_mutex);
        return LOGGER_BUSY;
    }

    s_writing = 1u;

    UINT written = 0u;
    FRESULT fr = f_write(&s_file, data, (UINT)len, &written);
    if (fr == FR_OK)
    {
        f_sync(&s_file);
    }

    s_writing = 0u;
    xSemaphoreGive(s_mutex);

    return (fr == FR_OK) ? LOGGER_OK : LOGGER_ERR;
}

uint8_t logger_is_writing(void)
{
    return s_writing;
}
