################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.c \
../APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.c \
../APP/lvgl/src/draw/vg_lite/lv_vg_lite_bitmap_font_cache.c \
../APP/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.c \
../APP/lvgl/src/draw/vg_lite/lv_vg_lite_grad.c \
../APP/lvgl/src/draw/vg_lite/lv_vg_lite_math.c \
../APP/lvgl/src/draw/vg_lite/lv_vg_lite_path.c \
../APP/lvgl/src/draw/vg_lite/lv_vg_lite_pending.c \
../APP/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.c \
../APP/lvgl/src/draw/vg_lite/lv_vg_lite_utils.c 

OBJS += \
./APP/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.o \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.o \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_bitmap_font_cache.o \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.o \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_grad.o \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_math.o \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_path.o \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_pending.o \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.o \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_utils.o 

C_DEPS += \
./APP/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.d \
./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.d \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_bitmap_font_cache.d \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.d \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_grad.d \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_math.d \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_path.d \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_pending.d \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.d \
./APP/lvgl/src/draw/vg_lite/lv_vg_lite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/vg_lite/%.o APP/lvgl/src/draw/vg_lite/%.su APP/lvgl/src/draw/vg_lite/%.cyclo: ../APP/lvgl/src/draw/vg_lite/%.c APP/lvgl/src/draw/vg_lite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-vg_lite

clean-APP-2f-lvgl-2f-src-2f-draw-2f-vg_lite:
	-$(RM) ./APP/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.d ./APP/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.o ./APP/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.su ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.cyclo ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.d ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.o ./APP/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.su ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_bitmap_font_cache.cyclo ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_bitmap_font_cache.d ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_bitmap_font_cache.o ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_bitmap_font_cache.su ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.cyclo ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.d ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.o ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.su ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_grad.cyclo ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_grad.d ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_grad.o ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_grad.su ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_math.cyclo ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_math.d ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_math.o ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_math.su ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_path.cyclo ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_path.d ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_path.o ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_path.su ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_pending.cyclo ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_pending.d ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_pending.o ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_pending.su ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.cyclo ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.d ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.o ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.su ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_utils.cyclo ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_utils.d ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_utils.o ./APP/lvgl/src/draw/vg_lite/lv_vg_lite_utils.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-vg_lite

