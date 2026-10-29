################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/libs/svg/lv_svg.c \
../APP/lvgl/src/libs/svg/lv_svg_decoder.c \
../APP/lvgl/src/libs/svg/lv_svg_parser.c \
../APP/lvgl/src/libs/svg/lv_svg_render.c \
../APP/lvgl/src/libs/svg/lv_svg_token.c 

OBJS += \
./APP/lvgl/src/libs/svg/lv_svg.o \
./APP/lvgl/src/libs/svg/lv_svg_decoder.o \
./APP/lvgl/src/libs/svg/lv_svg_parser.o \
./APP/lvgl/src/libs/svg/lv_svg_render.o \
./APP/lvgl/src/libs/svg/lv_svg_token.o 

C_DEPS += \
./APP/lvgl/src/libs/svg/lv_svg.d \
./APP/lvgl/src/libs/svg/lv_svg_decoder.d \
./APP/lvgl/src/libs/svg/lv_svg_parser.d \
./APP/lvgl/src/libs/svg/lv_svg_render.d \
./APP/lvgl/src/libs/svg/lv_svg_token.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/libs/svg/%.o APP/lvgl/src/libs/svg/%.su APP/lvgl/src/libs/svg/%.cyclo: ../APP/lvgl/src/libs/svg/%.c APP/lvgl/src/libs/svg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-libs-2f-svg

clean-APP-2f-lvgl-2f-src-2f-libs-2f-svg:
	-$(RM) ./APP/lvgl/src/libs/svg/lv_svg.cyclo ./APP/lvgl/src/libs/svg/lv_svg.d ./APP/lvgl/src/libs/svg/lv_svg.o ./APP/lvgl/src/libs/svg/lv_svg.su ./APP/lvgl/src/libs/svg/lv_svg_decoder.cyclo ./APP/lvgl/src/libs/svg/lv_svg_decoder.d ./APP/lvgl/src/libs/svg/lv_svg_decoder.o ./APP/lvgl/src/libs/svg/lv_svg_decoder.su ./APP/lvgl/src/libs/svg/lv_svg_parser.cyclo ./APP/lvgl/src/libs/svg/lv_svg_parser.d ./APP/lvgl/src/libs/svg/lv_svg_parser.o ./APP/lvgl/src/libs/svg/lv_svg_parser.su ./APP/lvgl/src/libs/svg/lv_svg_render.cyclo ./APP/lvgl/src/libs/svg/lv_svg_render.d ./APP/lvgl/src/libs/svg/lv_svg_render.o ./APP/lvgl/src/libs/svg/lv_svg_render.su ./APP/lvgl/src/libs/svg/lv_svg_token.cyclo ./APP/lvgl/src/libs/svg/lv_svg_token.d ./APP/lvgl/src/libs/svg/lv_svg_token.o ./APP/lvgl/src/libs/svg/lv_svg_token.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-libs-2f-svg

