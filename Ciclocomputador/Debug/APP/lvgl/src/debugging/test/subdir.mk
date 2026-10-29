################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/debugging/test/lv_test_display.c \
../APP/lvgl/src/debugging/test/lv_test_fs.c \
../APP/lvgl/src/debugging/test/lv_test_helpers.c \
../APP/lvgl/src/debugging/test/lv_test_indev.c \
../APP/lvgl/src/debugging/test/lv_test_indev_gesture.c \
../APP/lvgl/src/debugging/test/lv_test_screenshot_compare.c 

OBJS += \
./APP/lvgl/src/debugging/test/lv_test_display.o \
./APP/lvgl/src/debugging/test/lv_test_fs.o \
./APP/lvgl/src/debugging/test/lv_test_helpers.o \
./APP/lvgl/src/debugging/test/lv_test_indev.o \
./APP/lvgl/src/debugging/test/lv_test_indev_gesture.o \
./APP/lvgl/src/debugging/test/lv_test_screenshot_compare.o 

C_DEPS += \
./APP/lvgl/src/debugging/test/lv_test_display.d \
./APP/lvgl/src/debugging/test/lv_test_fs.d \
./APP/lvgl/src/debugging/test/lv_test_helpers.d \
./APP/lvgl/src/debugging/test/lv_test_indev.d \
./APP/lvgl/src/debugging/test/lv_test_indev_gesture.d \
./APP/lvgl/src/debugging/test/lv_test_screenshot_compare.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/debugging/test/%.o APP/lvgl/src/debugging/test/%.su APP/lvgl/src/debugging/test/%.cyclo: ../APP/lvgl/src/debugging/test/%.c APP/lvgl/src/debugging/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-debugging-2f-test

clean-APP-2f-lvgl-2f-src-2f-debugging-2f-test:
	-$(RM) ./APP/lvgl/src/debugging/test/lv_test_display.cyclo ./APP/lvgl/src/debugging/test/lv_test_display.d ./APP/lvgl/src/debugging/test/lv_test_display.o ./APP/lvgl/src/debugging/test/lv_test_display.su ./APP/lvgl/src/debugging/test/lv_test_fs.cyclo ./APP/lvgl/src/debugging/test/lv_test_fs.d ./APP/lvgl/src/debugging/test/lv_test_fs.o ./APP/lvgl/src/debugging/test/lv_test_fs.su ./APP/lvgl/src/debugging/test/lv_test_helpers.cyclo ./APP/lvgl/src/debugging/test/lv_test_helpers.d ./APP/lvgl/src/debugging/test/lv_test_helpers.o ./APP/lvgl/src/debugging/test/lv_test_helpers.su ./APP/lvgl/src/debugging/test/lv_test_indev.cyclo ./APP/lvgl/src/debugging/test/lv_test_indev.d ./APP/lvgl/src/debugging/test/lv_test_indev.o ./APP/lvgl/src/debugging/test/lv_test_indev.su ./APP/lvgl/src/debugging/test/lv_test_indev_gesture.cyclo ./APP/lvgl/src/debugging/test/lv_test_indev_gesture.d ./APP/lvgl/src/debugging/test/lv_test_indev_gesture.o ./APP/lvgl/src/debugging/test/lv_test_indev_gesture.su ./APP/lvgl/src/debugging/test/lv_test_screenshot_compare.cyclo ./APP/lvgl/src/debugging/test/lv_test_screenshot_compare.d ./APP/lvgl/src/debugging/test/lv_test_screenshot_compare.o ./APP/lvgl/src/debugging/test/lv_test_screenshot_compare.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-debugging-2f-test

