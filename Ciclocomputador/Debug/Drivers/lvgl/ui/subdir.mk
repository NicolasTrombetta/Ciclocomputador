################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lvgl/ui/images.c \
../Drivers/lvgl/ui/screens.c \
../Drivers/lvgl/ui/styles.c \
../Drivers/lvgl/ui/ui.c \
../Drivers/lvgl/ui/ui_font_roboto24.c \
../Drivers/lvgl/ui/ui_font_roboto28.c \
../Drivers/lvgl/ui/ui_font_roboto40.c \
../Drivers/lvgl/ui/ui_image_bateria.c \
../Drivers/lvgl/ui/ui_image_satelite.c 

OBJS += \
./Drivers/lvgl/ui/images.o \
./Drivers/lvgl/ui/screens.o \
./Drivers/lvgl/ui/styles.o \
./Drivers/lvgl/ui/ui.o \
./Drivers/lvgl/ui/ui_font_roboto24.o \
./Drivers/lvgl/ui/ui_font_roboto28.o \
./Drivers/lvgl/ui/ui_font_roboto40.o \
./Drivers/lvgl/ui/ui_image_bateria.o \
./Drivers/lvgl/ui/ui_image_satelite.o 

C_DEPS += \
./Drivers/lvgl/ui/images.d \
./Drivers/lvgl/ui/screens.d \
./Drivers/lvgl/ui/styles.d \
./Drivers/lvgl/ui/ui.d \
./Drivers/lvgl/ui/ui_font_roboto24.d \
./Drivers/lvgl/ui/ui_font_roboto28.d \
./Drivers/lvgl/ui/ui_font_roboto40.d \
./Drivers/lvgl/ui/ui_image_bateria.d \
./Drivers/lvgl/ui/ui_image_satelite.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lvgl/ui/%.o Drivers/lvgl/ui/%.su Drivers/lvgl/ui/%.cyclo: ../Drivers/lvgl/ui/%.c Drivers/lvgl/ui/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/FATFS/Target" -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lvgl-2f-ui

clean-Drivers-2f-lvgl-2f-ui:
	-$(RM) ./Drivers/lvgl/ui/images.cyclo ./Drivers/lvgl/ui/images.d ./Drivers/lvgl/ui/images.o ./Drivers/lvgl/ui/images.su ./Drivers/lvgl/ui/screens.cyclo ./Drivers/lvgl/ui/screens.d ./Drivers/lvgl/ui/screens.o ./Drivers/lvgl/ui/screens.su ./Drivers/lvgl/ui/styles.cyclo ./Drivers/lvgl/ui/styles.d ./Drivers/lvgl/ui/styles.o ./Drivers/lvgl/ui/styles.su ./Drivers/lvgl/ui/ui.cyclo ./Drivers/lvgl/ui/ui.d ./Drivers/lvgl/ui/ui.o ./Drivers/lvgl/ui/ui.su ./Drivers/lvgl/ui/ui_font_roboto24.cyclo ./Drivers/lvgl/ui/ui_font_roboto24.d ./Drivers/lvgl/ui/ui_font_roboto24.o ./Drivers/lvgl/ui/ui_font_roboto24.su ./Drivers/lvgl/ui/ui_font_roboto28.cyclo ./Drivers/lvgl/ui/ui_font_roboto28.d ./Drivers/lvgl/ui/ui_font_roboto28.o ./Drivers/lvgl/ui/ui_font_roboto28.su ./Drivers/lvgl/ui/ui_font_roboto40.cyclo ./Drivers/lvgl/ui/ui_font_roboto40.d ./Drivers/lvgl/ui/ui_font_roboto40.o ./Drivers/lvgl/ui/ui_font_roboto40.su ./Drivers/lvgl/ui/ui_image_bateria.cyclo ./Drivers/lvgl/ui/ui_image_bateria.d ./Drivers/lvgl/ui/ui_image_bateria.o ./Drivers/lvgl/ui/ui_image_bateria.su ./Drivers/lvgl/ui/ui_image_satelite.cyclo ./Drivers/lvgl/ui/ui_image_satelite.d ./Drivers/lvgl/ui/ui_image_satelite.o ./Drivers/lvgl/ui/ui_image_satelite.su

.PHONY: clean-Drivers-2f-lvgl-2f-ui

