################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/drivers/wayland/lv_wayland.c \
../APP/lvgl/src/drivers/wayland/lv_wl_egl_backend.c \
../APP/lvgl/src/drivers/wayland/lv_wl_g2d_backend.c \
../APP/lvgl/src/drivers/wayland/lv_wl_keyboard.c \
../APP/lvgl/src/drivers/wayland/lv_wl_pointer.c \
../APP/lvgl/src/drivers/wayland/lv_wl_seat.c \
../APP/lvgl/src/drivers/wayland/lv_wl_shm_backend.c \
../APP/lvgl/src/drivers/wayland/lv_wl_touch.c \
../APP/lvgl/src/drivers/wayland/lv_wl_window.c \
../APP/lvgl/src/drivers/wayland/lv_wl_xdg_shell.c 

OBJS += \
./APP/lvgl/src/drivers/wayland/lv_wayland.o \
./APP/lvgl/src/drivers/wayland/lv_wl_egl_backend.o \
./APP/lvgl/src/drivers/wayland/lv_wl_g2d_backend.o \
./APP/lvgl/src/drivers/wayland/lv_wl_keyboard.o \
./APP/lvgl/src/drivers/wayland/lv_wl_pointer.o \
./APP/lvgl/src/drivers/wayland/lv_wl_seat.o \
./APP/lvgl/src/drivers/wayland/lv_wl_shm_backend.o \
./APP/lvgl/src/drivers/wayland/lv_wl_touch.o \
./APP/lvgl/src/drivers/wayland/lv_wl_window.o \
./APP/lvgl/src/drivers/wayland/lv_wl_xdg_shell.o 

C_DEPS += \
./APP/lvgl/src/drivers/wayland/lv_wayland.d \
./APP/lvgl/src/drivers/wayland/lv_wl_egl_backend.d \
./APP/lvgl/src/drivers/wayland/lv_wl_g2d_backend.d \
./APP/lvgl/src/drivers/wayland/lv_wl_keyboard.d \
./APP/lvgl/src/drivers/wayland/lv_wl_pointer.d \
./APP/lvgl/src/drivers/wayland/lv_wl_seat.d \
./APP/lvgl/src/drivers/wayland/lv_wl_shm_backend.d \
./APP/lvgl/src/drivers/wayland/lv_wl_touch.d \
./APP/lvgl/src/drivers/wayland/lv_wl_window.d \
./APP/lvgl/src/drivers/wayland/lv_wl_xdg_shell.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/drivers/wayland/%.o APP/lvgl/src/drivers/wayland/%.su APP/lvgl/src/drivers/wayland/%.cyclo: ../APP/lvgl/src/drivers/wayland/%.c APP/lvgl/src/drivers/wayland/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-drivers-2f-wayland

clean-APP-2f-lvgl-2f-src-2f-drivers-2f-wayland:
	-$(RM) ./APP/lvgl/src/drivers/wayland/lv_wayland.cyclo ./APP/lvgl/src/drivers/wayland/lv_wayland.d ./APP/lvgl/src/drivers/wayland/lv_wayland.o ./APP/lvgl/src/drivers/wayland/lv_wayland.su ./APP/lvgl/src/drivers/wayland/lv_wl_egl_backend.cyclo ./APP/lvgl/src/drivers/wayland/lv_wl_egl_backend.d ./APP/lvgl/src/drivers/wayland/lv_wl_egl_backend.o ./APP/lvgl/src/drivers/wayland/lv_wl_egl_backend.su ./APP/lvgl/src/drivers/wayland/lv_wl_g2d_backend.cyclo ./APP/lvgl/src/drivers/wayland/lv_wl_g2d_backend.d ./APP/lvgl/src/drivers/wayland/lv_wl_g2d_backend.o ./APP/lvgl/src/drivers/wayland/lv_wl_g2d_backend.su ./APP/lvgl/src/drivers/wayland/lv_wl_keyboard.cyclo ./APP/lvgl/src/drivers/wayland/lv_wl_keyboard.d ./APP/lvgl/src/drivers/wayland/lv_wl_keyboard.o ./APP/lvgl/src/drivers/wayland/lv_wl_keyboard.su ./APP/lvgl/src/drivers/wayland/lv_wl_pointer.cyclo ./APP/lvgl/src/drivers/wayland/lv_wl_pointer.d ./APP/lvgl/src/drivers/wayland/lv_wl_pointer.o ./APP/lvgl/src/drivers/wayland/lv_wl_pointer.su ./APP/lvgl/src/drivers/wayland/lv_wl_seat.cyclo ./APP/lvgl/src/drivers/wayland/lv_wl_seat.d ./APP/lvgl/src/drivers/wayland/lv_wl_seat.o ./APP/lvgl/src/drivers/wayland/lv_wl_seat.su ./APP/lvgl/src/drivers/wayland/lv_wl_shm_backend.cyclo ./APP/lvgl/src/drivers/wayland/lv_wl_shm_backend.d ./APP/lvgl/src/drivers/wayland/lv_wl_shm_backend.o ./APP/lvgl/src/drivers/wayland/lv_wl_shm_backend.su ./APP/lvgl/src/drivers/wayland/lv_wl_touch.cyclo ./APP/lvgl/src/drivers/wayland/lv_wl_touch.d ./APP/lvgl/src/drivers/wayland/lv_wl_touch.o ./APP/lvgl/src/drivers/wayland/lv_wl_touch.su ./APP/lvgl/src/drivers/wayland/lv_wl_window.cyclo ./APP/lvgl/src/drivers/wayland/lv_wl_window.d ./APP/lvgl/src/drivers/wayland/lv_wl_window.o ./APP/lvgl/src/drivers/wayland/lv_wl_window.su ./APP/lvgl/src/drivers/wayland/lv_wl_xdg_shell.cyclo ./APP/lvgl/src/drivers/wayland/lv_wl_xdg_shell.d ./APP/lvgl/src/drivers/wayland/lv_wl_xdg_shell.o ./APP/lvgl/src/drivers/wayland/lv_wl_xdg_shell.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-drivers-2f-wayland

