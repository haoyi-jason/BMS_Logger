################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/3rd_party/fatfs/source/ff.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/3rd_party/fatfs/source/ffsystem.c \
D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/3rd_party/fatfs/source/ffunicode.c 

OBJS += \
./middlewares/fatfs/ff.o \
./middlewares/fatfs/ffsystem.o \
./middlewares/fatfs/ffunicode.o 

C_DEPS += \
./middlewares/fatfs/ff.d \
./middlewares/fatfs/ffsystem.d \
./middlewares/fatfs/ffunicode.d 


# Each subdirectory must supply rules for building sources it contributes
middlewares/fatfs/ff.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/3rd_party/fatfs/source/ff.c middlewares/fatfs/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

middlewares/fatfs/ffsystem.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/3rd_party/fatfs/source/ffsystem.c middlewares/fatfs/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

middlewares/fatfs/ffunicode.o: D:/SourceRespo/AT32_WS/BMS_Logger/AT32F413RCT7_BMS_Logger/middlewares/3rd_party/fatfs/source/ffunicode.c middlewares/fatfs/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -ffunction-sections -g -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DAT32F413RCT7 -DUSE_STDPERIPH_DRIVER -I"../../../libraries/drivers/inc" -I"../../../libraries/cmsis/cm4/core_support/" -I"../../../libraries/cmsis/cm4/device_support/" -I"../../inc" -I"../../../middlewares/usbd_drivers/inc" -I"../../../middlewares/3rd_party/fatfs/source" -I"../../../middlewares/freertos/source/include" -I"../../../middlewares/freertos/source/portable/memmang" -I"../../../middlewares/freertos/source/portable/GCC/ARM_CM4F" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


