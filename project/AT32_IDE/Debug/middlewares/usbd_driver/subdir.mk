################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/usbd_drivers/src/usbd_core.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/usbd_drivers/src/usbd_int.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/usbd_drivers/src/usbd_sdr.c 

OBJS += \
./middlewares/usbd_driver/usbd_core.o \
./middlewares/usbd_driver/usbd_int.o \
./middlewares/usbd_driver/usbd_sdr.o 

C_DEPS += \
./middlewares/usbd_driver/usbd_core.d \
./middlewares/usbd_driver/usbd_int.d \
./middlewares/usbd_driver/usbd_sdr.d 


# Each subdirectory must supply rules for building sources it contributes
middlewares/usbd_driver/usbd_core.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/usbd_drivers/src/usbd_core.c middlewares/usbd_driver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

middlewares/usbd_driver/usbd_int.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/usbd_drivers/src/usbd_int.c middlewares/usbd_driver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

middlewares/usbd_driver/usbd_sdr.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/usbd_drivers/src/usbd_sdr.c middlewares/usbd_driver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


