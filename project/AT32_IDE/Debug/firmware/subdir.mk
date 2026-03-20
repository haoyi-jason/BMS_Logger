################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_acc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_adc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_bpr.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_can.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_crc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_crm.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_debug.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_dma.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_exint.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_flash.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_gpio.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_i2c.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_misc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_pwc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_rtc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_sdio.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_spi.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_tmr.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_usart.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_usb.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_wdt.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_wwdt.c 

OBJS += \
./firmware/at32f413_acc.o \
./firmware/at32f413_adc.o \
./firmware/at32f413_bpr.o \
./firmware/at32f413_can.o \
./firmware/at32f413_crc.o \
./firmware/at32f413_crm.o \
./firmware/at32f413_debug.o \
./firmware/at32f413_dma.o \
./firmware/at32f413_exint.o \
./firmware/at32f413_flash.o \
./firmware/at32f413_gpio.o \
./firmware/at32f413_i2c.o \
./firmware/at32f413_misc.o \
./firmware/at32f413_pwc.o \
./firmware/at32f413_rtc.o \
./firmware/at32f413_sdio.o \
./firmware/at32f413_spi.o \
./firmware/at32f413_tmr.o \
./firmware/at32f413_usart.o \
./firmware/at32f413_usb.o \
./firmware/at32f413_wdt.o \
./firmware/at32f413_wwdt.o 

C_DEPS += \
./firmware/at32f413_acc.d \
./firmware/at32f413_adc.d \
./firmware/at32f413_bpr.d \
./firmware/at32f413_can.d \
./firmware/at32f413_crc.d \
./firmware/at32f413_crm.d \
./firmware/at32f413_debug.d \
./firmware/at32f413_dma.d \
./firmware/at32f413_exint.d \
./firmware/at32f413_flash.d \
./firmware/at32f413_gpio.d \
./firmware/at32f413_i2c.d \
./firmware/at32f413_misc.d \
./firmware/at32f413_pwc.d \
./firmware/at32f413_rtc.d \
./firmware/at32f413_sdio.d \
./firmware/at32f413_spi.d \
./firmware/at32f413_tmr.d \
./firmware/at32f413_usart.d \
./firmware/at32f413_usb.d \
./firmware/at32f413_wdt.d \
./firmware/at32f413_wwdt.d 


# Each subdirectory must supply rules for building sources it contributes
firmware/at32f413_acc.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_acc.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_adc.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_adc.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_bpr.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_bpr.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_can.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_can.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_crc.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_crc.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_crm.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_crm.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_debug.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_debug.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_dma.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_dma.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_exint.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_exint.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_flash.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_flash.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_gpio.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_gpio.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_i2c.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_i2c.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_misc.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_misc.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_pwc.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_pwc.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_rtc.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_rtc.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_sdio.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_sdio.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_spi.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_spi.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_tmr.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_tmr.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_usart.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_usart.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_usb.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_usb.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_wdt.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_wdt.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

firmware/at32f413_wwdt.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/libraries/drivers/src/at32f413_wwdt.c firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


