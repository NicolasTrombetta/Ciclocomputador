################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/drivers/nuttx/lv_nuttx_cache.c \
../APP/lvgl/src/drivers/nuttx/lv_nuttx_entry.c \
../APP/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.c \
../APP/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.c \
../APP/lvgl/src/drivers/nuttx/lv_nuttx_lcd.c \
../APP/lvgl/src/drivers/nuttx/lv_nuttx_libuv.c \
../APP/lvgl/src/drivers/nuttx/lv_nuttx_mouse.c \
../APP/lvgl/src/drivers/nuttx/lv_nuttx_profiler.c \
../APP/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.c 

OBJS += \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_cache.o \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_entry.o \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_mouse.o \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o 

C_DEPS += \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_cache.d \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_entry.d \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_mouse.d \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d \
./APP/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/drivers/nuttx/%.o APP/lvgl/src/drivers/nuttx/%.su APP/lvgl/src/drivers/nuttx/%.cyclo: ../APP/lvgl/src/drivers/nuttx/%.c APP/lvgl/src/drivers/nuttx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-drivers-2f-nuttx

clean-APP-2f-lvgl-2f-src-2f-drivers-2f-nuttx:
	-$(RM) ./APP/lvgl/src/drivers/nuttx/lv_nuttx_cache.cyclo ./APP/lvgl/src/drivers/nuttx/lv_nuttx_cache.d ./APP/lvgl/src/drivers/nuttx/lv_nuttx_cache.o ./APP/lvgl/src/drivers/nuttx/lv_nuttx_cache.su ./APP/lvgl/src/drivers/nuttx/lv_nuttx_entry.cyclo ./APP/lvgl/src/drivers/nuttx/lv_nuttx_entry.d ./APP/lvgl/src/drivers/nuttx/lv_nuttx_entry.o ./APP/lvgl/src/drivers/nuttx/lv_nuttx_entry.su ./APP/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.cyclo ./APP/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d ./APP/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o ./APP/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.su ./APP/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.cyclo ./APP/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d ./APP/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o ./APP/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.su ./APP/lvgl/src/drivers/nuttx/lv_nuttx_lcd.cyclo ./APP/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d ./APP/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o ./APP/lvgl/src/drivers/nuttx/lv_nuttx_lcd.su ./APP/lvgl/src/drivers/nuttx/lv_nuttx_libuv.cyclo ./APP/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d ./APP/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o ./APP/lvgl/src/drivers/nuttx/lv_nuttx_libuv.su ./APP/lvgl/src/drivers/nuttx/lv_nuttx_mouse.cyclo ./APP/lvgl/src/drivers/nuttx/lv_nuttx_mouse.d ./APP/lvgl/src/drivers/nuttx/lv_nuttx_mouse.o ./APP/lvgl/src/drivers/nuttx/lv_nuttx_mouse.su ./APP/lvgl/src/drivers/nuttx/lv_nuttx_profiler.cyclo ./APP/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d ./APP/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o ./APP/lvgl/src/drivers/nuttx/lv_nuttx_profiler.su ./APP/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.cyclo ./APP/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d ./APP/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o ./APP/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-drivers-2f-nuttx

