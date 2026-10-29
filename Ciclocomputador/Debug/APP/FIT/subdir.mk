################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/FIT/encode_fit.c \
../APP/FIT/fit.c \
../APP/FIT/fit_crc.c \
../APP/FIT/fit_example.c \
../APP/FIT/fit_product.c 

OBJS += \
./APP/FIT/encode_fit.o \
./APP/FIT/fit.o \
./APP/FIT/fit_crc.o \
./APP/FIT/fit_example.o \
./APP/FIT/fit_product.o 

C_DEPS += \
./APP/FIT/encode_fit.d \
./APP/FIT/fit.d \
./APP/FIT/fit_crc.d \
./APP/FIT/fit_example.d \
./APP/FIT/fit_product.d 


# Each subdirectory must supply rules for building sources it contributes
APP/FIT/%.o APP/FIT/%.su APP/FIT/%.cyclo: ../APP/FIT/%.c APP/FIT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-FIT

clean-APP-2f-FIT:
	-$(RM) ./APP/FIT/encode_fit.cyclo ./APP/FIT/encode_fit.d ./APP/FIT/encode_fit.o ./APP/FIT/encode_fit.su ./APP/FIT/fit.cyclo ./APP/FIT/fit.d ./APP/FIT/fit.o ./APP/FIT/fit.su ./APP/FIT/fit_crc.cyclo ./APP/FIT/fit_crc.d ./APP/FIT/fit_crc.o ./APP/FIT/fit_crc.su ./APP/FIT/fit_example.cyclo ./APP/FIT/fit_example.d ./APP/FIT/fit_example.o ./APP/FIT/fit_example.su ./APP/FIT/fit_product.cyclo ./APP/FIT/fit_product.d ./APP/FIT/fit_product.o ./APP/FIT/fit_product.su

.PHONY: clean-APP-2f-FIT

