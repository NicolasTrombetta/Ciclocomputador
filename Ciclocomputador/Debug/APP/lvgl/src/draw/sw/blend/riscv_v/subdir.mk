################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/sw/blend/riscv_v/lv_draw_sw_blend_riscv_v_to_rgb888.c 

OBJS += \
./APP/lvgl/src/draw/sw/blend/riscv_v/lv_draw_sw_blend_riscv_v_to_rgb888.o 

C_DEPS += \
./APP/lvgl/src/draw/sw/blend/riscv_v/lv_draw_sw_blend_riscv_v_to_rgb888.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/sw/blend/riscv_v/%.o APP/lvgl/src/draw/sw/blend/riscv_v/%.su APP/lvgl/src/draw/sw/blend/riscv_v/%.cyclo: ../APP/lvgl/src/draw/sw/blend/riscv_v/%.c APP/lvgl/src/draw/sw/blend/riscv_v/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-riscv_v

clean-APP-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-riscv_v:
	-$(RM) ./APP/lvgl/src/draw/sw/blend/riscv_v/lv_draw_sw_blend_riscv_v_to_rgb888.cyclo ./APP/lvgl/src/draw/sw/blend/riscv_v/lv_draw_sw_blend_riscv_v_to_rgb888.d ./APP/lvgl/src/draw/sw/blend/riscv_v/lv_draw_sw_blend_riscv_v_to_rgb888.o ./APP/lvgl/src/draw/sw/blend/riscv_v/lv_draw_sw_blend_riscv_v_to_rgb888.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-riscv_v

