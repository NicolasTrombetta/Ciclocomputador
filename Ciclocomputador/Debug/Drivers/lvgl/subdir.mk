################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/GUI.c \
../Drivers/lvgl/ili9341.c \
../Drivers/lvgl/lvgl.c 

OBJS += \
./Drivers/lvgl/GUI.o \
./Drivers/lvgl/ili9341.o \
./Drivers/lvgl/lvgl.o 

C_DEPS += \
./Drivers/lvgl/GUI.d \
./Drivers/lvgl/ili9341.d \
./Drivers/lvgl/lvgl.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/%.o Drivers/lvgl/%.su Drivers/lvgl/%.cyclo: ../Drivers/lvgl/%.c Drivers/lvgl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/Target" -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl

clean-Drivers-2f-lvgl:
	-$(RM) ./Drivers/lvgl/GUI.cyclo ./Drivers/lvgl/GUI.d ./Drivers/lvgl/GUI.o ./Drivers/lvgl/GUI.su ./Drivers/lvgl/ili9341.cyclo ./Drivers/lvgl/ili9341.d ./Drivers/lvgl/ili9341.o ./Drivers/lvgl/ili9341.su ./Drivers/lvgl/lvgl.cyclo ./Drivers/lvgl/lvgl.d ./Drivers/lvgl/lvgl.o ./Drivers/lvgl/lvgl.su

.PHONY: clean-Drivers-2f-lvgl

