################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.c \
../Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.c \
../Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.c \
../Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.c \
../Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.c 

OBJS += \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.o \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.o \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.o \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.o \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.o 

C_DEPS += \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.d \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.d \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.d \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.d \
./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/libs/vg_lite_driver/VGLite/%.o Drivers/lvgl/src/libs/vg_lite_driver/VGLite/%.su Drivers/lvgl/src/libs/vg_lite_driver/VGLite/%.cyclo: ../Drivers/lvgl/src/libs/vg_lite_driver/VGLite/%.c Drivers/lvgl/src/libs/vg_lite_driver/VGLite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/Target" -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite

clean-Drivers-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite:
	-$(RM) ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.cyclo ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.d ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.o ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.su ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.cyclo ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.d ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.o ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.su ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.cyclo ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.d ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.o ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.su ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.cyclo ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.d ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.o ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.su ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.cyclo ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.d ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.o ./Drivers/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite

