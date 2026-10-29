################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/indev/lv_gridnav.c \
../APP/lvgl/src/indev/lv_indev.c \
../APP/lvgl/src/indev/lv_indev_gesture.c \
../APP/lvgl/src/indev/lv_indev_scroll.c 

OBJS += \
./APP/lvgl/src/indev/lv_gridnav.o \
./APP/lvgl/src/indev/lv_indev.o \
./APP/lvgl/src/indev/lv_indev_gesture.o \
./APP/lvgl/src/indev/lv_indev_scroll.o 

C_DEPS += \
./APP/lvgl/src/indev/lv_gridnav.d \
./APP/lvgl/src/indev/lv_indev.d \
./APP/lvgl/src/indev/lv_indev_gesture.d \
./APP/lvgl/src/indev/lv_indev_scroll.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/indev/%.o APP/lvgl/src/indev/%.su APP/lvgl/src/indev/%.cyclo: ../APP/lvgl/src/indev/%.c APP/lvgl/src/indev/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-indev

clean-APP-2f-lvgl-2f-src-2f-indev:
	-$(RM) ./APP/lvgl/src/indev/lv_gridnav.cyclo ./APP/lvgl/src/indev/lv_gridnav.d ./APP/lvgl/src/indev/lv_gridnav.o ./APP/lvgl/src/indev/lv_gridnav.su ./APP/lvgl/src/indev/lv_indev.cyclo ./APP/lvgl/src/indev/lv_indev.d ./APP/lvgl/src/indev/lv_indev.o ./APP/lvgl/src/indev/lv_indev.su ./APP/lvgl/src/indev/lv_indev_gesture.cyclo ./APP/lvgl/src/indev/lv_indev_gesture.d ./APP/lvgl/src/indev/lv_indev_gesture.o ./APP/lvgl/src/indev/lv_indev_gesture.su ./APP/lvgl/src/indev/lv_indev_scroll.cyclo ./APP/lvgl/src/indev/lv_indev_scroll.d ./APP/lvgl/src/indev/lv_indev_scroll.o ./APP/lvgl/src/indev/lv_indev_scroll.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-indev

