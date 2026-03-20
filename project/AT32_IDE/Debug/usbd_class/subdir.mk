################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/msc_bot_scsi.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/msc_class.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/msc_desc.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/msc_diskio.c 

OBJS += \
./usbd_class/msc_bot_scsi.o \
./usbd_class/msc_class.o \
./usbd_class/msc_desc.o \
./usbd_class/msc_diskio.o 

C_DEPS += \
./usbd_class/msc_bot_scsi.d \
./usbd_class/msc_class.d \
./usbd_class/msc_desc.d \
./usbd_class/msc_diskio.d 


# Each subdirectory must supply rules for building sources it contributes
usbd_class/msc_bot_scsi.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/msc_bot_scsi.c usbd_class/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

usbd_class/msc_class.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/msc_class.c usbd_class/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

usbd_class/msc_desc.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/msc_desc.c usbd_class/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

usbd_class/msc_diskio.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/project/src/msc_diskio.c usbd_class/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


