################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/sw/lv_draw_sw.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_blur.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_border.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_box_shadow.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_fill.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_grad.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_img.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_line.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_mask.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_mask_rect.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_transform.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_triangle.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_utils.c \
../APP/lvgl/src/draw/sw/lv_draw_sw_vector.c 

OBJS += \
./APP/lvgl/src/draw/sw/lv_draw_sw.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_blur.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_border.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_fill.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_grad.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_img.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_line.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_mask.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_transform.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_triangle.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_utils.o \
./APP/lvgl/src/draw/sw/lv_draw_sw_vector.o 

C_DEPS += \
./APP/lvgl/src/draw/sw/lv_draw_sw.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_blur.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_border.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_fill.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_grad.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_img.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_line.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_mask.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_transform.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_triangle.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_utils.d \
./APP/lvgl/src/draw/sw/lv_draw_sw_vector.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/sw/%.o APP/lvgl/src/draw/sw/%.su APP/lvgl/src/draw/sw/%.cyclo: ../APP/lvgl/src/draw/sw/%.c APP/lvgl/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-sw

clean-APP-2f-lvgl-2f-src-2f-draw-2f-sw:
	-$(RM) ./APP/lvgl/src/draw/sw/lv_draw_sw.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw.d ./APP/lvgl/src/draw/sw/lv_draw_sw.o ./APP/lvgl/src/draw/sw/lv_draw_sw.su ./APP/lvgl/src/draw/sw/lv_draw_sw_arc.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_arc.d ./APP/lvgl/src/draw/sw/lv_draw_sw_arc.o ./APP/lvgl/src/draw/sw/lv_draw_sw_arc.su ./APP/lvgl/src/draw/sw/lv_draw_sw_blur.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_blur.d ./APP/lvgl/src/draw/sw/lv_draw_sw_blur.o ./APP/lvgl/src/draw/sw/lv_draw_sw_blur.su ./APP/lvgl/src/draw/sw/lv_draw_sw_border.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_border.d ./APP/lvgl/src/draw/sw/lv_draw_sw_border.o ./APP/lvgl/src/draw/sw/lv_draw_sw_border.su ./APP/lvgl/src/draw/sw/lv_draw_sw_box_shadow.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d ./APP/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o ./APP/lvgl/src/draw/sw/lv_draw_sw_box_shadow.su ./APP/lvgl/src/draw/sw/lv_draw_sw_fill.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_fill.d ./APP/lvgl/src/draw/sw/lv_draw_sw_fill.o ./APP/lvgl/src/draw/sw/lv_draw_sw_fill.su ./APP/lvgl/src/draw/sw/lv_draw_sw_grad.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_grad.d ./APP/lvgl/src/draw/sw/lv_draw_sw_grad.o ./APP/lvgl/src/draw/sw/lv_draw_sw_grad.su ./APP/lvgl/src/draw/sw/lv_draw_sw_img.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_img.d ./APP/lvgl/src/draw/sw/lv_draw_sw_img.o ./APP/lvgl/src/draw/sw/lv_draw_sw_img.su ./APP/lvgl/src/draw/sw/lv_draw_sw_letter.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_letter.d ./APP/lvgl/src/draw/sw/lv_draw_sw_letter.o ./APP/lvgl/src/draw/sw/lv_draw_sw_letter.su ./APP/lvgl/src/draw/sw/lv_draw_sw_line.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_line.d ./APP/lvgl/src/draw/sw/lv_draw_sw_line.o ./APP/lvgl/src/draw/sw/lv_draw_sw_line.su ./APP/lvgl/src/draw/sw/lv_draw_sw_mask.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_mask.d ./APP/lvgl/src/draw/sw/lv_draw_sw_mask.o ./APP/lvgl/src/draw/sw/lv_draw_sw_mask.su ./APP/lvgl/src/draw/sw/lv_draw_sw_mask_rect.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d ./APP/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o ./APP/lvgl/src/draw/sw/lv_draw_sw_mask_rect.su ./APP/lvgl/src/draw/sw/lv_draw_sw_transform.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_transform.d ./APP/lvgl/src/draw/sw/lv_draw_sw_transform.o ./APP/lvgl/src/draw/sw/lv_draw_sw_transform.su ./APP/lvgl/src/draw/sw/lv_draw_sw_triangle.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_triangle.d ./APP/lvgl/src/draw/sw/lv_draw_sw_triangle.o ./APP/lvgl/src/draw/sw/lv_draw_sw_triangle.su ./APP/lvgl/src/draw/sw/lv_draw_sw_utils.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_utils.d ./APP/lvgl/src/draw/sw/lv_draw_sw_utils.o ./APP/lvgl/src/draw/sw/lv_draw_sw_utils.su ./APP/lvgl/src/draw/sw/lv_draw_sw_vector.cyclo ./APP/lvgl/src/draw/sw/lv_draw_sw_vector.d ./APP/lvgl/src/draw/sw/lv_draw_sw_vector.o ./APP/lvgl/src/draw/sw/lv_draw_sw_vector.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-sw

