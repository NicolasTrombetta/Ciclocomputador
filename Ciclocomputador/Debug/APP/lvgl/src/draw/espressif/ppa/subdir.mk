################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa.c \
../APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.c \
../APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.c \
../APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.c 

OBJS += \
./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa.o \
./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.o \
./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.o \
./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.o 

C_DEPS += \
./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa.d \
./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.d \
./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.d \
./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/draw/espressif/ppa/%.o APP/lvgl/src/draw/espressif/ppa/%.su APP/lvgl/src/draw/espressif/ppa/%.cyclo: ../APP/lvgl/src/draw/espressif/ppa/%.c APP/lvgl/src/draw/espressif/ppa/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-draw-2f-espressif-2f-ppa

clean-APP-2f-lvgl-2f-src-2f-draw-2f-espressif-2f-ppa:
	-$(RM) ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa.cyclo ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa.d ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa.o ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa.su ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.cyclo ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.d ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.o ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.su ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.cyclo ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.d ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.o ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.su ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.cyclo ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.d ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.o ./APP/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-draw-2f-espressif-2f-ppa

