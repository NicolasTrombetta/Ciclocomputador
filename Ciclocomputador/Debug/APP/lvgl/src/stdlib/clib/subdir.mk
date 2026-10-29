################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/stdlib/clib/lv_mem_core_clib.c \
../APP/lvgl/src/stdlib/clib/lv_sprintf_clib.c \
../APP/lvgl/src/stdlib/clib/lv_string_clib.c 

OBJS += \
./APP/lvgl/src/stdlib/clib/lv_mem_core_clib.o \
./APP/lvgl/src/stdlib/clib/lv_sprintf_clib.o \
./APP/lvgl/src/stdlib/clib/lv_string_clib.o 

C_DEPS += \
./APP/lvgl/src/stdlib/clib/lv_mem_core_clib.d \
./APP/lvgl/src/stdlib/clib/lv_sprintf_clib.d \
./APP/lvgl/src/stdlib/clib/lv_string_clib.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/stdlib/clib/%.o APP/lvgl/src/stdlib/clib/%.su APP/lvgl/src/stdlib/clib/%.cyclo: ../APP/lvgl/src/stdlib/clib/%.c APP/lvgl/src/stdlib/clib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-stdlib-2f-clib

clean-APP-2f-lvgl-2f-src-2f-stdlib-2f-clib:
	-$(RM) ./APP/lvgl/src/stdlib/clib/lv_mem_core_clib.cyclo ./APP/lvgl/src/stdlib/clib/lv_mem_core_clib.d ./APP/lvgl/src/stdlib/clib/lv_mem_core_clib.o ./APP/lvgl/src/stdlib/clib/lv_mem_core_clib.su ./APP/lvgl/src/stdlib/clib/lv_sprintf_clib.cyclo ./APP/lvgl/src/stdlib/clib/lv_sprintf_clib.d ./APP/lvgl/src/stdlib/clib/lv_sprintf_clib.o ./APP/lvgl/src/stdlib/clib/lv_sprintf_clib.su ./APP/lvgl/src/stdlib/clib/lv_string_clib.cyclo ./APP/lvgl/src/stdlib/clib/lv_string_clib.d ./APP/lvgl/src/stdlib/clib/lv_string_clib.o ./APP/lvgl/src/stdlib/clib/lv_string_clib.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-stdlib-2f-clib

