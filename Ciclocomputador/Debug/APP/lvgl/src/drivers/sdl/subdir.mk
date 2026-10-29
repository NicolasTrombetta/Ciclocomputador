################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/drivers/sdl/lv_sdl_egl.c \
../APP/lvgl/src/drivers/sdl/lv_sdl_keyboard.c \
../APP/lvgl/src/drivers/sdl/lv_sdl_mouse.c \
../APP/lvgl/src/drivers/sdl/lv_sdl_mousewheel.c \
../APP/lvgl/src/drivers/sdl/lv_sdl_sw.c \
../APP/lvgl/src/drivers/sdl/lv_sdl_texture.c \
../APP/lvgl/src/drivers/sdl/lv_sdl_window.c 

OBJS += \
./APP/lvgl/src/drivers/sdl/lv_sdl_egl.o \
./APP/lvgl/src/drivers/sdl/lv_sdl_keyboard.o \
./APP/lvgl/src/drivers/sdl/lv_sdl_mouse.o \
./APP/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o \
./APP/lvgl/src/drivers/sdl/lv_sdl_sw.o \
./APP/lvgl/src/drivers/sdl/lv_sdl_texture.o \
./APP/lvgl/src/drivers/sdl/lv_sdl_window.o 

C_DEPS += \
./APP/lvgl/src/drivers/sdl/lv_sdl_egl.d \
./APP/lvgl/src/drivers/sdl/lv_sdl_keyboard.d \
./APP/lvgl/src/drivers/sdl/lv_sdl_mouse.d \
./APP/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d \
./APP/lvgl/src/drivers/sdl/lv_sdl_sw.d \
./APP/lvgl/src/drivers/sdl/lv_sdl_texture.d \
./APP/lvgl/src/drivers/sdl/lv_sdl_window.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/drivers/sdl/%.o APP/lvgl/src/drivers/sdl/%.su APP/lvgl/src/drivers/sdl/%.cyclo: ../APP/lvgl/src/drivers/sdl/%.c APP/lvgl/src/drivers/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-drivers-2f-sdl

clean-APP-2f-lvgl-2f-src-2f-drivers-2f-sdl:
	-$(RM) ./APP/lvgl/src/drivers/sdl/lv_sdl_egl.cyclo ./APP/lvgl/src/drivers/sdl/lv_sdl_egl.d ./APP/lvgl/src/drivers/sdl/lv_sdl_egl.o ./APP/lvgl/src/drivers/sdl/lv_sdl_egl.su ./APP/lvgl/src/drivers/sdl/lv_sdl_keyboard.cyclo ./APP/lvgl/src/drivers/sdl/lv_sdl_keyboard.d ./APP/lvgl/src/drivers/sdl/lv_sdl_keyboard.o ./APP/lvgl/src/drivers/sdl/lv_sdl_keyboard.su ./APP/lvgl/src/drivers/sdl/lv_sdl_mouse.cyclo ./APP/lvgl/src/drivers/sdl/lv_sdl_mouse.d ./APP/lvgl/src/drivers/sdl/lv_sdl_mouse.o ./APP/lvgl/src/drivers/sdl/lv_sdl_mouse.su ./APP/lvgl/src/drivers/sdl/lv_sdl_mousewheel.cyclo ./APP/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d ./APP/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o ./APP/lvgl/src/drivers/sdl/lv_sdl_mousewheel.su ./APP/lvgl/src/drivers/sdl/lv_sdl_sw.cyclo ./APP/lvgl/src/drivers/sdl/lv_sdl_sw.d ./APP/lvgl/src/drivers/sdl/lv_sdl_sw.o ./APP/lvgl/src/drivers/sdl/lv_sdl_sw.su ./APP/lvgl/src/drivers/sdl/lv_sdl_texture.cyclo ./APP/lvgl/src/drivers/sdl/lv_sdl_texture.d ./APP/lvgl/src/drivers/sdl/lv_sdl_texture.o ./APP/lvgl/src/drivers/sdl/lv_sdl_texture.su ./APP/lvgl/src/drivers/sdl/lv_sdl_window.cyclo ./APP/lvgl/src/drivers/sdl/lv_sdl_window.d ./APP/lvgl/src/drivers/sdl/lv_sdl_window.o ./APP/lvgl/src/drivers/sdl/lv_sdl_window.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-drivers-2f-sdl

