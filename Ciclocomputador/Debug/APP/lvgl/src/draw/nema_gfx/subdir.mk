################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.c \
../APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.c \
../APP/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.c 

OBJS += \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.o \
./APP/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o 

C_DEPS += \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d \
./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.d \
./APP/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/nema_gfx/%.o APP/lvgl/src/draw/nema_gfx/%.su APP/lvgl/src/draw/nema_gfx/%.cyclo: ../APP/lvgl/src/draw/nema_gfx/%.c APP/lvgl/src/draw/nema_gfx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

clean-APP-2f-lvgl-2f-src-2f-draw-2f-nema_gfx:
	-$(RM) ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.su ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.d ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.o ./APP/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_vector.su ./APP/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.cyclo ./APP/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d ./APP/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o ./APP/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

