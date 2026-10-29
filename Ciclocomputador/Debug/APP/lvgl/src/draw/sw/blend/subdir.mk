################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend.c \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.c \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.c \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.c \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.c \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.c \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.c \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.c \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.c \
../APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.c 

OBJS += \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.o \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.o \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.o \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.o \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o 

C_DEPS += \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.d \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.d \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.d \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.d \
./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/sw/blend/%.o APP/lvgl/src/draw/sw/blend/%.su APP/lvgl/src/draw/sw/blend/%.cyclo: ../APP/lvgl/src/draw/sw/blend/%.c APP/lvgl/src/draw/sw/blend/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

clean-APP-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend:
	-$(RM) ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend.su ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_a8.su ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.su ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.su ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.su ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.su ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.su ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.su ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.su ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.cyclo ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o ./APP/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

