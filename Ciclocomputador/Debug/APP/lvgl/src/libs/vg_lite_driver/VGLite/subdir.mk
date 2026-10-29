################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.c \
../APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.c \
../APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.c \
../APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.c \
../APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.c 

OBJS += \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.o \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.o \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.o \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.o \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.o 

C_DEPS += \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.d \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.d \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.d \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.d \
./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/libs/vg_lite_driver/VGLite/%.o APP/lvgl/src/libs/vg_lite_driver/VGLite/%.su APP/lvgl/src/libs/vg_lite_driver/VGLite/%.cyclo: ../APP/lvgl/src/libs/vg_lite_driver/VGLite/%.c APP/lvgl/src/libs/vg_lite_driver/VGLite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite

clean-APP-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite:
	-$(RM) ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.cyclo ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.d ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.o ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.su ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.cyclo ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.d ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.o ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.su ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.cyclo ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.d ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.o ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.su ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.cyclo ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.d ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.o ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.su ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.cyclo ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.d ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.o ./APP/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite

