################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/lv_draw.c \
../APP/lvgl/src/draw/lv_draw_3d.c \
../APP/lvgl/src/draw/lv_draw_arc.c \
../APP/lvgl/src/draw/lv_draw_blur.c \
../APP/lvgl/src/draw/lv_draw_buf.c \
../APP/lvgl/src/draw/lv_draw_image.c \
../APP/lvgl/src/draw/lv_draw_label.c \
../APP/lvgl/src/draw/lv_draw_line.c \
../APP/lvgl/src/draw/lv_draw_mask.c \
../APP/lvgl/src/draw/lv_draw_rect.c \
../APP/lvgl/src/draw/lv_draw_triangle.c \
../APP/lvgl/src/draw/lv_draw_vector.c \
../APP/lvgl/src/draw/lv_image_decoder.c 

OBJS += \
./APP/lvgl/src/draw/lv_draw.o \
./APP/lvgl/src/draw/lv_draw_3d.o \
./APP/lvgl/src/draw/lv_draw_arc.o \
./APP/lvgl/src/draw/lv_draw_blur.o \
./APP/lvgl/src/draw/lv_draw_buf.o \
./APP/lvgl/src/draw/lv_draw_image.o \
./APP/lvgl/src/draw/lv_draw_label.o \
./APP/lvgl/src/draw/lv_draw_line.o \
./APP/lvgl/src/draw/lv_draw_mask.o \
./APP/lvgl/src/draw/lv_draw_rect.o \
./APP/lvgl/src/draw/lv_draw_triangle.o \
./APP/lvgl/src/draw/lv_draw_vector.o \
./APP/lvgl/src/draw/lv_image_decoder.o 

C_DEPS += \
./APP/lvgl/src/draw/lv_draw.d \
./APP/lvgl/src/draw/lv_draw_3d.d \
./APP/lvgl/src/draw/lv_draw_arc.d \
./APP/lvgl/src/draw/lv_draw_blur.d \
./APP/lvgl/src/draw/lv_draw_buf.d \
./APP/lvgl/src/draw/lv_draw_image.d \
./APP/lvgl/src/draw/lv_draw_label.d \
./APP/lvgl/src/draw/lv_draw_line.d \
./APP/lvgl/src/draw/lv_draw_mask.d \
./APP/lvgl/src/draw/lv_draw_rect.d \
./APP/lvgl/src/draw/lv_draw_triangle.d \
./APP/lvgl/src/draw/lv_draw_vector.d \
./APP/lvgl/src/draw/lv_image_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/%.o APP/lvgl/src/draw/%.su APP/lvgl/src/draw/%.cyclo: ../APP/lvgl/src/draw/%.c APP/lvgl/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw

clean-APP-2f-lvgl-2f-src-2f-draw:
	-$(RM) ./APP/lvgl/src/draw/lv_draw.cyclo ./APP/lvgl/src/draw/lv_draw.d ./APP/lvgl/src/draw/lv_draw.o ./APP/lvgl/src/draw/lv_draw.su ./APP/lvgl/src/draw/lv_draw_3d.cyclo ./APP/lvgl/src/draw/lv_draw_3d.d ./APP/lvgl/src/draw/lv_draw_3d.o ./APP/lvgl/src/draw/lv_draw_3d.su ./APP/lvgl/src/draw/lv_draw_arc.cyclo ./APP/lvgl/src/draw/lv_draw_arc.d ./APP/lvgl/src/draw/lv_draw_arc.o ./APP/lvgl/src/draw/lv_draw_arc.su ./APP/lvgl/src/draw/lv_draw_blur.cyclo ./APP/lvgl/src/draw/lv_draw_blur.d ./APP/lvgl/src/draw/lv_draw_blur.o ./APP/lvgl/src/draw/lv_draw_blur.su ./APP/lvgl/src/draw/lv_draw_buf.cyclo ./APP/lvgl/src/draw/lv_draw_buf.d ./APP/lvgl/src/draw/lv_draw_buf.o ./APP/lvgl/src/draw/lv_draw_buf.su ./APP/lvgl/src/draw/lv_draw_image.cyclo ./APP/lvgl/src/draw/lv_draw_image.d ./APP/lvgl/src/draw/lv_draw_image.o ./APP/lvgl/src/draw/lv_draw_image.su ./APP/lvgl/src/draw/lv_draw_label.cyclo ./APP/lvgl/src/draw/lv_draw_label.d ./APP/lvgl/src/draw/lv_draw_label.o ./APP/lvgl/src/draw/lv_draw_label.su ./APP/lvgl/src/draw/lv_draw_line.cyclo ./APP/lvgl/src/draw/lv_draw_line.d ./APP/lvgl/src/draw/lv_draw_line.o ./APP/lvgl/src/draw/lv_draw_line.su ./APP/lvgl/src/draw/lv_draw_mask.cyclo ./APP/lvgl/src/draw/lv_draw_mask.d ./APP/lvgl/src/draw/lv_draw_mask.o ./APP/lvgl/src/draw/lv_draw_mask.su ./APP/lvgl/src/draw/lv_draw_rect.cyclo ./APP/lvgl/src/draw/lv_draw_rect.d ./APP/lvgl/src/draw/lv_draw_rect.o ./APP/lvgl/src/draw/lv_draw_rect.su ./APP/lvgl/src/draw/lv_draw_triangle.cyclo ./APP/lvgl/src/draw/lv_draw_triangle.d ./APP/lvgl/src/draw/lv_draw_triangle.o ./APP/lvgl/src/draw/lv_draw_triangle.su ./APP/lvgl/src/draw/lv_draw_vector.cyclo ./APP/lvgl/src/draw/lv_draw_vector.d ./APP/lvgl/src/draw/lv_draw_vector.o ./APP/lvgl/src/draw/lv_draw_vector.su ./APP/lvgl/src/draw/lv_image_decoder.cyclo ./APP/lvgl/src/draw/lv_image_decoder.d ./APP/lvgl/src/draw/lv_image_decoder.o ./APP/lvgl/src/draw/lv_image_decoder.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw

