################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/drivers/opengles/glad/src/egl.c \
../APP/lvgl/src/drivers/opengles/glad/src/gl.c \
../APP/lvgl/src/drivers/opengles/glad/src/gles2.c 

OBJS += \
./APP/lvgl/src/drivers/opengles/glad/src/egl.o \
./APP/lvgl/src/drivers/opengles/glad/src/gl.o \
./APP/lvgl/src/drivers/opengles/glad/src/gles2.o 

C_DEPS += \
./APP/lvgl/src/drivers/opengles/glad/src/egl.d \
./APP/lvgl/src/drivers/opengles/glad/src/gl.d \
./APP/lvgl/src/drivers/opengles/glad/src/gles2.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/drivers/opengles/glad/src/%.o APP/lvgl/src/drivers/opengles/glad/src/%.su APP/lvgl/src/drivers/opengles/glad/src/%.cyclo: ../APP/lvgl/src/drivers/opengles/glad/src/%.c APP/lvgl/src/drivers/opengles/glad/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-glad-2f-src

clean-APP-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-glad-2f-src:
	-$(RM) ./APP/lvgl/src/drivers/opengles/glad/src/egl.cyclo ./APP/lvgl/src/drivers/opengles/glad/src/egl.d ./APP/lvgl/src/drivers/opengles/glad/src/egl.o ./APP/lvgl/src/drivers/opengles/glad/src/egl.su ./APP/lvgl/src/drivers/opengles/glad/src/gl.cyclo ./APP/lvgl/src/drivers/opengles/glad/src/gl.d ./APP/lvgl/src/drivers/opengles/glad/src/gl.o ./APP/lvgl/src/drivers/opengles/glad/src/gl.su ./APP/lvgl/src/drivers/opengles/glad/src/gles2.cyclo ./APP/lvgl/src/drivers/opengles/glad/src/gles2.d ./APP/lvgl/src/drivers/opengles/glad/src/gles2.o ./APP/lvgl/src/drivers/opengles/glad/src/gles2.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-glad-2f-src

