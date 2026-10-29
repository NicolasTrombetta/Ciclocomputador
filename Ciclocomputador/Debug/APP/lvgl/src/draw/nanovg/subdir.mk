################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_border.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_image.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_label.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_line.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.c \
../APP/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.c \
../APP/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.c \
../APP/lvgl/src/draw/nanovg/lv_nanovg_image_cache.c \
../APP/lvgl/src/draw/nanovg/lv_nanovg_utils.c 

OBJS += \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_border.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_image.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_label.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_line.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.o \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.o \
./APP/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.o \
./APP/lvgl/src/draw/nanovg/lv_nanovg_image_cache.o \
./APP/lvgl/src/draw/nanovg/lv_nanovg_utils.o 

C_DEPS += \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_border.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_image.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_label.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_line.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.d \
./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.d \
./APP/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.d \
./APP/lvgl/src/draw/nanovg/lv_nanovg_image_cache.d \
./APP/lvgl/src/draw/nanovg/lv_nanovg_utils.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/nanovg/%.o APP/lvgl/src/draw/nanovg/%.su APP/lvgl/src/draw/nanovg/%.cyclo: ../APP/lvgl/src/draw/nanovg/%.c APP/lvgl/src/draw/nanovg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-nanovg

clean-APP-2f-lvgl-2f-src-2f-draw-2f-nanovg:
	-$(RM) ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_3d.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_arc.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_border.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_border.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_border.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_border.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_box_shadow.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_fill.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_grad.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_image.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_image.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_image.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_image.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_label.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_label.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_label.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_label.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_layer.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_line.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_line.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_line.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_line.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_mask_rect.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_triangle.su ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.cyclo ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.d ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.o ./APP/lvgl/src/draw/nanovg/lv_draw_nanovg_vector.su ./APP/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.cyclo ./APP/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.d ./APP/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.o ./APP/lvgl/src/draw/nanovg/lv_nanovg_fbo_cache.su ./APP/lvgl/src/draw/nanovg/lv_nanovg_image_cache.cyclo ./APP/lvgl/src/draw/nanovg/lv_nanovg_image_cache.d ./APP/lvgl/src/draw/nanovg/lv_nanovg_image_cache.o ./APP/lvgl/src/draw/nanovg/lv_nanovg_image_cache.su ./APP/lvgl/src/draw/nanovg/lv_nanovg_utils.cyclo ./APP/lvgl/src/draw/nanovg/lv_nanovg_utils.d ./APP/lvgl/src/draw/nanovg/lv_nanovg_utils.o ./APP/lvgl/src/draw/nanovg/lv_nanovg_utils.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-nanovg

