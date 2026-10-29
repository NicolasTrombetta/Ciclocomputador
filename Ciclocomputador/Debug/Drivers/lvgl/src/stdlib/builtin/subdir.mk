################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/stdlib/builtin/lv_mem_core_builtin.c \
../Drivers/lvgl/src/stdlib/builtin/lv_sprintf_builtin.c \
../Drivers/lvgl/src/stdlib/builtin/lv_string_builtin.c \
../Drivers/lvgl/src/stdlib/builtin/lv_tlsf.c 

OBJS += \
./Drivers/lvgl/src/stdlib/builtin/lv_mem_core_builtin.o \
./Drivers/lvgl/src/stdlib/builtin/lv_sprintf_builtin.o \
./Drivers/lvgl/src/stdlib/builtin/lv_string_builtin.o \
./Drivers/lvgl/src/stdlib/builtin/lv_tlsf.o 

C_DEPS += \
./Drivers/lvgl/src/stdlib/builtin/lv_mem_core_builtin.d \
./Drivers/lvgl/src/stdlib/builtin/lv_sprintf_builtin.d \
./Drivers/lvgl/src/stdlib/builtin/lv_string_builtin.d \
./Drivers/lvgl/src/stdlib/builtin/lv_tlsf.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/stdlib/builtin/%.o Drivers/lvgl/src/stdlib/builtin/%.su Drivers/lvgl/src/stdlib/builtin/%.cyclo: ../Drivers/lvgl/src/stdlib/builtin/%.c Drivers/lvgl/src/stdlib/builtin/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/Target" -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-stdlib-2f-builtin

clean-Drivers-2f-lvgl-2f-src-2f-stdlib-2f-builtin:
	-$(RM) ./Drivers/lvgl/src/stdlib/builtin/lv_mem_core_builtin.cyclo ./Drivers/lvgl/src/stdlib/builtin/lv_mem_core_builtin.d ./Drivers/lvgl/src/stdlib/builtin/lv_mem_core_builtin.o ./Drivers/lvgl/src/stdlib/builtin/lv_mem_core_builtin.su ./Drivers/lvgl/src/stdlib/builtin/lv_sprintf_builtin.cyclo ./Drivers/lvgl/src/stdlib/builtin/lv_sprintf_builtin.d ./Drivers/lvgl/src/stdlib/builtin/lv_sprintf_builtin.o ./Drivers/lvgl/src/stdlib/builtin/lv_sprintf_builtin.su ./Drivers/lvgl/src/stdlib/builtin/lv_string_builtin.cyclo ./Drivers/lvgl/src/stdlib/builtin/lv_string_builtin.d ./Drivers/lvgl/src/stdlib/builtin/lv_string_builtin.o ./Drivers/lvgl/src/stdlib/builtin/lv_string_builtin.su ./Drivers/lvgl/src/stdlib/builtin/lv_tlsf.cyclo ./Drivers/lvgl/src/stdlib/builtin/lv_tlsf.d ./Drivers/lvgl/src/stdlib/builtin/lv_tlsf.o ./Drivers/lvgl/src/stdlib/builtin/lv_tlsf.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-stdlib-2f-builtin

