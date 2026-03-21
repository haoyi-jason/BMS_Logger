################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/at32_sdio.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/at32f413_int.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/at32f413_wk_config.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/diskio.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/fatfs_disk.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/freertos_app.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/main.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/rtc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/sd_diskio.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/usb_app.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_acc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_can.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_debug.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_sdio.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_system.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_usart.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_usbfs.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/bsp/bsp_uart.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/bsp/bsp_led.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/bsp/bsp_rtc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/app/uart_logger.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/app/logger.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/app/usb_msd.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/app/app_main.c 
OBJS += \
./user/at32_sdio.o \
./user/at32f413_int.o \
./user/at32f413_wk_config.o \
./user/diskio.o \
./user/fatfs_disk.o \
./user/freertos_app.o \
./user/main.o \
./user/rtc.o \
./user/sd_diskio.o \
./user/usb_app.o \
./user/wk_acc.o \
./user/wk_can.o \
./user/wk_debug.o \
./user/wk_sdio.o \
./user/wk_system.o \
./user/wk_usart.o \
./user/wk_usbfs.o 
 \
./user/bsp_uart.o \
./user/bsp_led.o \
./user/bsp_rtc.o \
./user/uart_logger.o \
./user/logger.o \
./user/usb_msd.o \
./user/app_main.o 
C_DEPS += \
./user/at32_sdio.d \
./user/at32f413_int.d \
./user/at32f413_wk_config.d \
./user/diskio.d \
./user/fatfs_disk.d \
./user/freertos_app.d \
./user/main.d \
./user/rtc.d \
./user/sd_diskio.d \
./user/usb_app.d \
./user/wk_acc.d \
./user/wk_can.d \
./user/wk_debug.d \
./user/wk_sdio.d \
./user/wk_system.d \
./user/wk_usart.d \
./user/wk_usbfs.d \
./user/bsp_uart.d \
./user/bsp_led.d \
./user/bsp_rtc.d \
./user/uart_logger.d \
./user/logger.d \
./user/usb_msd.d \
./user/app_main.d 


# Each subdirectory must supply rules for building sources it contributes
user/at32_sdio.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/at32_sdio.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/at32f413_int.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/at32f413_int.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/at32f413_wk_config.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/at32f413_wk_config.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/diskio.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/diskio.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/fatfs_disk.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/fatfs_disk.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/freertos_app.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/freertos_app.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/main.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/main.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/rtc.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/rtc.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/sd_diskio.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/sd_diskio.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/usb_app.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/usb_app.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/wk_acc.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_acc.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/wk_can.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_can.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/wk_debug.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_debug.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/wk_sdio.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_sdio.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/wk_system.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_system.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/wk_usart.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_usart.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

user/wk_usbfs.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/wk_usbfs.c user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


