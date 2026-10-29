################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FIT/encode_fit.c \
../FIT/fit.c \
../FIT/fit_crc.c \
../FIT/fit_example.c \
../FIT/fit_product.c 

OBJS += \
./FIT/encode_fit.o \
./FIT/fit.o \
./FIT/fit_crc.o \
./FIT/fit_example.o \
./FIT/fit_product.o 

C_DEPS += \
./FIT/encode_fit.d \
./FIT/fit.d \
./FIT/fit_crc.d \
./FIT/fit_example.d \
./FIT/fit_product.d 


# Each subdirectory must supply rules for building sources it contributes
FIT/%.o FIT/%.su FIT/%.cyclo: ../FIT/%.c FIT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/Target" -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FIT

clean-FIT:
	-$(RM) ./FIT/encode_fit.cyclo ./FIT/encode_fit.d ./FIT/encode_fit.o ./FIT/encode_fit.su ./FIT/fit.cyclo ./FIT/fit.d ./FIT/fit.o ./FIT/fit.su ./FIT/fit_crc.cyclo ./FIT/fit_crc.d ./FIT/fit_crc.o ./FIT/fit_crc.su ./FIT/fit_example.cyclo ./FIT/fit_example.d ./FIT/fit_example.o ./FIT/fit_example.su ./FIT/fit_product.cyclo ./FIT/fit_product.d ./FIT/fit_product.o ./FIT/fit_product.su

.PHONY: clean-FIT

