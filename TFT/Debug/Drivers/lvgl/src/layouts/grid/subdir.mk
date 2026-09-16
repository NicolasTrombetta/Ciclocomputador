################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/src/layouts/grid/lv_grid.c 

OBJS += \
./Drivers/lvgl/src/layouts/grid/lv_grid.o 

C_DEPS += \
./Drivers/lvgl/src/layouts/grid/lv_grid.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/src/layouts/grid/%.o Drivers/lvgl/src/layouts/grid/%.su Drivers/lvgl/src/layouts/grid/%.cyclo: ../Drivers/lvgl/src/layouts/grid/%.c Drivers/lvgl/src/layouts/grid/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/TFT/Drivers/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/TFT/Drivers/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/TFT/Drivers" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-src-2f-layouts-2f-grid

clean-Drivers-2f-lvgl-2f-src-2f-layouts-2f-grid:
	-$(RM) ./Drivers/lvgl/src/layouts/grid/lv_grid.cyclo ./Drivers/lvgl/src/layouts/grid/lv_grid.d ./Drivers/lvgl/src/layouts/grid/lv_grid.o ./Drivers/lvgl/src/layouts/grid/lv_grid.su

.PHONY: clean-Drivers-2f-lvgl-2f-src-2f-layouts-2f-grid

