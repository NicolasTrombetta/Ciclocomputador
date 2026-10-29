################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/eve/lv_draw_eve.c \
../APP/lvgl/src/draw/eve/lv_draw_eve_arc.c \
../APP/lvgl/src/draw/eve/lv_draw_eve_fill.c \
../APP/lvgl/src/draw/eve/lv_draw_eve_image.c \
../APP/lvgl/src/draw/eve/lv_draw_eve_letter.c \
../APP/lvgl/src/draw/eve/lv_draw_eve_line.c \
../APP/lvgl/src/draw/eve/lv_draw_eve_ram_g.c \
../APP/lvgl/src/draw/eve/lv_draw_eve_triangle.c \
../APP/lvgl/src/draw/eve/lv_eve.c 

OBJS += \
./APP/lvgl/src/draw/eve/lv_draw_eve.o \
./APP/lvgl/src/draw/eve/lv_draw_eve_arc.o \
./APP/lvgl/src/draw/eve/lv_draw_eve_fill.o \
./APP/lvgl/src/draw/eve/lv_draw_eve_image.o \
./APP/lvgl/src/draw/eve/lv_draw_eve_letter.o \
./APP/lvgl/src/draw/eve/lv_draw_eve_line.o \
./APP/lvgl/src/draw/eve/lv_draw_eve_ram_g.o \
./APP/lvgl/src/draw/eve/lv_draw_eve_triangle.o \
./APP/lvgl/src/draw/eve/lv_eve.o 

C_DEPS += \
./APP/lvgl/src/draw/eve/lv_draw_eve.d \
./APP/lvgl/src/draw/eve/lv_draw_eve_arc.d \
./APP/lvgl/src/draw/eve/lv_draw_eve_fill.d \
./APP/lvgl/src/draw/eve/lv_draw_eve_image.d \
./APP/lvgl/src/draw/eve/lv_draw_eve_letter.d \
./APP/lvgl/src/draw/eve/lv_draw_eve_line.d \
./APP/lvgl/src/draw/eve/lv_draw_eve_ram_g.d \
./APP/lvgl/src/draw/eve/lv_draw_eve_triangle.d \
./APP/lvgl/src/draw/eve/lv_eve.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/eve/%.o APP/lvgl/src/draw/eve/%.su APP/lvgl/src/draw/eve/%.cyclo: ../APP/lvgl/src/draw/eve/%.c APP/lvgl/src/draw/eve/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-eve

clean-APP-2f-lvgl-2f-src-2f-draw-2f-eve:
	-$(RM) ./APP/lvgl/src/draw/eve/lv_draw_eve.cyclo ./APP/lvgl/src/draw/eve/lv_draw_eve.d ./APP/lvgl/src/draw/eve/lv_draw_eve.o ./APP/lvgl/src/draw/eve/lv_draw_eve.su ./APP/lvgl/src/draw/eve/lv_draw_eve_arc.cyclo ./APP/lvgl/src/draw/eve/lv_draw_eve_arc.d ./APP/lvgl/src/draw/eve/lv_draw_eve_arc.o ./APP/lvgl/src/draw/eve/lv_draw_eve_arc.su ./APP/lvgl/src/draw/eve/lv_draw_eve_fill.cyclo ./APP/lvgl/src/draw/eve/lv_draw_eve_fill.d ./APP/lvgl/src/draw/eve/lv_draw_eve_fill.o ./APP/lvgl/src/draw/eve/lv_draw_eve_fill.su ./APP/lvgl/src/draw/eve/lv_draw_eve_image.cyclo ./APP/lvgl/src/draw/eve/lv_draw_eve_image.d ./APP/lvgl/src/draw/eve/lv_draw_eve_image.o ./APP/lvgl/src/draw/eve/lv_draw_eve_image.su ./APP/lvgl/src/draw/eve/lv_draw_eve_letter.cyclo ./APP/lvgl/src/draw/eve/lv_draw_eve_letter.d ./APP/lvgl/src/draw/eve/lv_draw_eve_letter.o ./APP/lvgl/src/draw/eve/lv_draw_eve_letter.su ./APP/lvgl/src/draw/eve/lv_draw_eve_line.cyclo ./APP/lvgl/src/draw/eve/lv_draw_eve_line.d ./APP/lvgl/src/draw/eve/lv_draw_eve_line.o ./APP/lvgl/src/draw/eve/lv_draw_eve_line.su ./APP/lvgl/src/draw/eve/lv_draw_eve_ram_g.cyclo ./APP/lvgl/src/draw/eve/lv_draw_eve_ram_g.d ./APP/lvgl/src/draw/eve/lv_draw_eve_ram_g.o ./APP/lvgl/src/draw/eve/lv_draw_eve_ram_g.su ./APP/lvgl/src/draw/eve/lv_draw_eve_triangle.cyclo ./APP/lvgl/src/draw/eve/lv_draw_eve_triangle.d ./APP/lvgl/src/draw/eve/lv_draw_eve_triangle.o ./APP/lvgl/src/draw/eve/lv_draw_eve_triangle.su ./APP/lvgl/src/draw/eve/lv_eve.cyclo ./APP/lvgl/src/draw/eve/lv_eve.d ./APP/lvgl/src/draw/eve/lv_eve.o ./APP/lvgl/src/draw/eve/lv_eve.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-eve

