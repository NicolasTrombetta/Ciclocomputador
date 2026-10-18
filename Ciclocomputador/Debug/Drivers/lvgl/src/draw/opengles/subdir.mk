################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/draw/opengles/lv_draw_opengles.c 

OBJS += \
./Drivers/lvgl/src/draw/opengles/lv_draw_opengles.o 

C_DEPS += \
./Drivers/lvgl/src/draw/opengles/lv_draw_opengles.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/draw/opengles/%.o Drivers/lvgl/src/draw/opengles/%.su Drivers/lvgl/src/draw/opengles/%.cyclo: ../Drivers/lvgl/src/draw/opengles/%.c Drivers/lvgl/src/draw/opengles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/TFT/Drivers/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/TFT/Drivers/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/TFT/Drivers" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/TFT/Drivers/lvgl/ui" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-draw-2f-opengles

clean-Drivers-2f-lvgl-2f-src-2f-draw-2f-opengles:
	-$(RM) ./Drivers/lvgl/src/draw/opengles/lv_draw_opengles.cyclo ./Drivers/lvgl/src/draw/opengles/lv_draw_opengles.d ./Drivers/lvgl/src/draw/opengles/lv_draw_opengles.o ./Drivers/lvgl/src/draw/opengles/lv_draw_opengles.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-draw-2f-opengles

