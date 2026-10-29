################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/ui/images.c \
../APP/lvgl/ui/screens.c \
../APP/lvgl/ui/styles.c \
../APP/lvgl/ui/ui.c \
../APP/lvgl/ui/ui_font_roboto24.c \
../APP/lvgl/ui/ui_font_roboto28.c \
../APP/lvgl/ui/ui_font_roboto40.c \
../APP/lvgl/ui/ui_image_bateria.c \
../APP/lvgl/ui/ui_image_satelite.c 

OBJS += \
./APP/lvgl/ui/images.o \
./APP/lvgl/ui/screens.o \
./APP/lvgl/ui/styles.o \
./APP/lvgl/ui/ui.o \
./APP/lvgl/ui/ui_font_roboto24.o \
./APP/lvgl/ui/ui_font_roboto28.o \
./APP/lvgl/ui/ui_font_roboto40.o \
./APP/lvgl/ui/ui_image_bateria.o \
./APP/lvgl/ui/ui_image_satelite.o 

C_DEPS += \
./APP/lvgl/ui/images.d \
./APP/lvgl/ui/screens.d \
./APP/lvgl/ui/styles.d \
./APP/lvgl/ui/ui.d \
./APP/lvgl/ui/ui_font_roboto24.d \
./APP/lvgl/ui/ui_font_roboto28.d \
./APP/lvgl/ui/ui_font_roboto40.d \
./APP/lvgl/ui/ui_image_bateria.d \
./APP/lvgl/ui/ui_image_satelite.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/ui/%.o APP/lvgl/ui/%.su APP/lvgl/ui/%.cyclo: ../APP/lvgl/ui/%.c APP/lvgl/ui/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-ui

clean-APP-2f-lvgl-2f-ui:
	-$(RM) ./APP/lvgl/ui/images.cyclo ./APP/lvgl/ui/images.d ./APP/lvgl/ui/images.o ./APP/lvgl/ui/images.su ./APP/lvgl/ui/screens.cyclo ./APP/lvgl/ui/screens.d ./APP/lvgl/ui/screens.o ./APP/lvgl/ui/screens.su ./APP/lvgl/ui/styles.cyclo ./APP/lvgl/ui/styles.d ./APP/lvgl/ui/styles.o ./APP/lvgl/ui/styles.su ./APP/lvgl/ui/ui.cyclo ./APP/lvgl/ui/ui.d ./APP/lvgl/ui/ui.o ./APP/lvgl/ui/ui.su ./APP/lvgl/ui/ui_font_roboto24.cyclo ./APP/lvgl/ui/ui_font_roboto24.d ./APP/lvgl/ui/ui_font_roboto24.o ./APP/lvgl/ui/ui_font_roboto24.su ./APP/lvgl/ui/ui_font_roboto28.cyclo ./APP/lvgl/ui/ui_font_roboto28.d ./APP/lvgl/ui/ui_font_roboto28.o ./APP/lvgl/ui/ui_font_roboto28.su ./APP/lvgl/ui/ui_font_roboto40.cyclo ./APP/lvgl/ui/ui_font_roboto40.d ./APP/lvgl/ui/ui_font_roboto40.o ./APP/lvgl/ui/ui_font_roboto40.su ./APP/lvgl/ui/ui_image_bateria.cyclo ./APP/lvgl/ui/ui_image_bateria.d ./APP/lvgl/ui/ui_image_bateria.o ./APP/lvgl/ui/ui_image_bateria.su ./APP/lvgl/ui/ui_image_satelite.cyclo ./APP/lvgl/ui/ui_image_satelite.d ./APP/lvgl/ui/ui_image_satelite.o ./APP/lvgl/ui/ui_image_satelite.su

.PHONY: clean-APP-2f-lvgl-2f-ui

