################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.c \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.c \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.c \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.c \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.c \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.c \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.c \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.c \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.c \
../APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.c 

OBJS += \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o 

C_DEPS += \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d \
./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/renesas/dave2d/%.o APP/lvgl/src/draw/renesas/dave2d/%.su APP/lvgl/src/draw/renesas/dave2d/%.cyclo: ../APP/lvgl/src/draw/renesas/dave2d/%.c APP/lvgl/src/draw/renesas/dave2d/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

clean-APP-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d:
	-$(RM) ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.su ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.su ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.su ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.su ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.su ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.su ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.su ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.su ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.su ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.cyclo ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o ./APP/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

