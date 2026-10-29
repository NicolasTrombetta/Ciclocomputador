################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/lvgl/src/widgets/property/lv_animimage_properties.c \
../APP/lvgl/src/widgets/property/lv_arc_properties.c \
../APP/lvgl/src/widgets/property/lv_bar_properties.c \
../APP/lvgl/src/widgets/property/lv_buttonmatrix_properties.c \
../APP/lvgl/src/widgets/property/lv_chart_properties.c \
../APP/lvgl/src/widgets/property/lv_checkbox_properties.c \
../APP/lvgl/src/widgets/property/lv_dropdown_properties.c \
../APP/lvgl/src/widgets/property/lv_image_properties.c \
../APP/lvgl/src/widgets/property/lv_keyboard_properties.c \
../APP/lvgl/src/widgets/property/lv_label_properties.c \
../APP/lvgl/src/widgets/property/lv_led_properties.c \
../APP/lvgl/src/widgets/property/lv_line_properties.c \
../APP/lvgl/src/widgets/property/lv_menu_properties.c \
../APP/lvgl/src/widgets/property/lv_obj_properties.c \
../APP/lvgl/src/widgets/property/lv_roller_properties.c \
../APP/lvgl/src/widgets/property/lv_scale_properties.c \
../APP/lvgl/src/widgets/property/lv_slider_properties.c \
../APP/lvgl/src/widgets/property/lv_span_properties.c \
../APP/lvgl/src/widgets/property/lv_spinbox_properties.c \
../APP/lvgl/src/widgets/property/lv_spinner_properties.c \
../APP/lvgl/src/widgets/property/lv_style_properties.c \
../APP/lvgl/src/widgets/property/lv_switch_properties.c \
../APP/lvgl/src/widgets/property/lv_table_properties.c \
../APP/lvgl/src/widgets/property/lv_tabview_properties.c \
../APP/lvgl/src/widgets/property/lv_textarea_properties.c 

OBJS += \
./APP/lvgl/src/widgets/property/lv_animimage_properties.o \
./APP/lvgl/src/widgets/property/lv_arc_properties.o \
./APP/lvgl/src/widgets/property/lv_bar_properties.o \
./APP/lvgl/src/widgets/property/lv_buttonmatrix_properties.o \
./APP/lvgl/src/widgets/property/lv_chart_properties.o \
./APP/lvgl/src/widgets/property/lv_checkbox_properties.o \
./APP/lvgl/src/widgets/property/lv_dropdown_properties.o \
./APP/lvgl/src/widgets/property/lv_image_properties.o \
./APP/lvgl/src/widgets/property/lv_keyboard_properties.o \
./APP/lvgl/src/widgets/property/lv_label_properties.o \
./APP/lvgl/src/widgets/property/lv_led_properties.o \
./APP/lvgl/src/widgets/property/lv_line_properties.o \
./APP/lvgl/src/widgets/property/lv_menu_properties.o \
./APP/lvgl/src/widgets/property/lv_obj_properties.o \
./APP/lvgl/src/widgets/property/lv_roller_properties.o \
./APP/lvgl/src/widgets/property/lv_scale_properties.o \
./APP/lvgl/src/widgets/property/lv_slider_properties.o \
./APP/lvgl/src/widgets/property/lv_span_properties.o \
./APP/lvgl/src/widgets/property/lv_spinbox_properties.o \
./APP/lvgl/src/widgets/property/lv_spinner_properties.o \
./APP/lvgl/src/widgets/property/lv_style_properties.o \
./APP/lvgl/src/widgets/property/lv_switch_properties.o \
./APP/lvgl/src/widgets/property/lv_table_properties.o \
./APP/lvgl/src/widgets/property/lv_tabview_properties.o \
./APP/lvgl/src/widgets/property/lv_textarea_properties.o 

C_DEPS += \
./APP/lvgl/src/widgets/property/lv_animimage_properties.d \
./APP/lvgl/src/widgets/property/lv_arc_properties.d \
./APP/lvgl/src/widgets/property/lv_bar_properties.d \
./APP/lvgl/src/widgets/property/lv_buttonmatrix_properties.d \
./APP/lvgl/src/widgets/property/lv_chart_properties.d \
./APP/lvgl/src/widgets/property/lv_checkbox_properties.d \
./APP/lvgl/src/widgets/property/lv_dropdown_properties.d \
./APP/lvgl/src/widgets/property/lv_image_properties.d \
./APP/lvgl/src/widgets/property/lv_keyboard_properties.d \
./APP/lvgl/src/widgets/property/lv_label_properties.d \
./APP/lvgl/src/widgets/property/lv_led_properties.d \
./APP/lvgl/src/widgets/property/lv_line_properties.d \
./APP/lvgl/src/widgets/property/lv_menu_properties.d \
./APP/lvgl/src/widgets/property/lv_obj_properties.d \
./APP/lvgl/src/widgets/property/lv_roller_properties.d \
./APP/lvgl/src/widgets/property/lv_scale_properties.d \
./APP/lvgl/src/widgets/property/lv_slider_properties.d \
./APP/lvgl/src/widgets/property/lv_span_properties.d \
./APP/lvgl/src/widgets/property/lv_spinbox_properties.d \
./APP/lvgl/src/widgets/property/lv_spinner_properties.d \
./APP/lvgl/src/widgets/property/lv_style_properties.d \
./APP/lvgl/src/widgets/property/lv_switch_properties.d \
./APP/lvgl/src/widgets/property/lv_table_properties.d \
./APP/lvgl/src/widgets/property/lv_tabview_properties.d \
./APP/lvgl/src/widgets/property/lv_textarea_properties.d 


# Each subdirectory must supply rules for building sources it contributes
APP/lvgl/src/widgets/property/%.o APP/lvgl/src/widgets/property/%.su APP/lvgl/src/widgets/property/%.cyclo: ../APP/lvgl/src/widgets/property/%.c APP/lvgl/src/widgets/property/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DLV_CONF_INCLUDE_SIMPLE -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/Drivers" -I../Middlewares/Third_Party/FatFs/src -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/App" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FATFS/Target" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/FIT" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/ui" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/lvgl/src" -I"C:/Users/Nico trombetta/Documents/UTN/DIgitales2/Ciclocomputador/Ciclocomputador/APP/Tasks" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-lvgl-2f-src-2f-widgets-2f-property

clean-APP-2f-lvgl-2f-src-2f-widgets-2f-property:
	-$(RM) ./APP/lvgl/src/widgets/property/lv_animimage_properties.cyclo ./APP/lvgl/src/widgets/property/lv_animimage_properties.d ./APP/lvgl/src/widgets/property/lv_animimage_properties.o ./APP/lvgl/src/widgets/property/lv_animimage_properties.su ./APP/lvgl/src/widgets/property/lv_arc_properties.cyclo ./APP/lvgl/src/widgets/property/lv_arc_properties.d ./APP/lvgl/src/widgets/property/lv_arc_properties.o ./APP/lvgl/src/widgets/property/lv_arc_properties.su ./APP/lvgl/src/widgets/property/lv_bar_properties.cyclo ./APP/lvgl/src/widgets/property/lv_bar_properties.d ./APP/lvgl/src/widgets/property/lv_bar_properties.o ./APP/lvgl/src/widgets/property/lv_bar_properties.su ./APP/lvgl/src/widgets/property/lv_buttonmatrix_properties.cyclo ./APP/lvgl/src/widgets/property/lv_buttonmatrix_properties.d ./APP/lvgl/src/widgets/property/lv_buttonmatrix_properties.o ./APP/lvgl/src/widgets/property/lv_buttonmatrix_properties.su ./APP/lvgl/src/widgets/property/lv_chart_properties.cyclo ./APP/lvgl/src/widgets/property/lv_chart_properties.d ./APP/lvgl/src/widgets/property/lv_chart_properties.o ./APP/lvgl/src/widgets/property/lv_chart_properties.su ./APP/lvgl/src/widgets/property/lv_checkbox_properties.cyclo ./APP/lvgl/src/widgets/property/lv_checkbox_properties.d ./APP/lvgl/src/widgets/property/lv_checkbox_properties.o ./APP/lvgl/src/widgets/property/lv_checkbox_properties.su ./APP/lvgl/src/widgets/property/lv_dropdown_properties.cyclo ./APP/lvgl/src/widgets/property/lv_dropdown_properties.d ./APP/lvgl/src/widgets/property/lv_dropdown_properties.o ./APP/lvgl/src/widgets/property/lv_dropdown_properties.su ./APP/lvgl/src/widgets/property/lv_image_properties.cyclo ./APP/lvgl/src/widgets/property/lv_image_properties.d ./APP/lvgl/src/widgets/property/lv_image_properties.o ./APP/lvgl/src/widgets/property/lv_image_properties.su ./APP/lvgl/src/widgets/property/lv_keyboard_properties.cyclo ./APP/lvgl/src/widgets/property/lv_keyboard_properties.d ./APP/lvgl/src/widgets/property/lv_keyboard_properties.o ./APP/lvgl/src/widgets/property/lv_keyboard_properties.su ./APP/lvgl/src/widgets/property/lv_label_properties.cyclo ./APP/lvgl/src/widgets/property/lv_label_properties.d ./APP/lvgl/src/widgets/property/lv_label_properties.o ./APP/lvgl/src/widgets/property/lv_label_properties.su ./APP/lvgl/src/widgets/property/lv_led_properties.cyclo ./APP/lvgl/src/widgets/property/lv_led_properties.d ./APP/lvgl/src/widgets/property/lv_led_properties.o ./APP/lvgl/src/widgets/property/lv_led_properties.su ./APP/lvgl/src/widgets/property/lv_line_properties.cyclo ./APP/lvgl/src/widgets/property/lv_line_properties.d ./APP/lvgl/src/widgets/property/lv_line_properties.o ./APP/lvgl/src/widgets/property/lv_line_properties.su ./APP/lvgl/src/widgets/property/lv_menu_properties.cyclo ./APP/lvgl/src/widgets/property/lv_menu_properties.d ./APP/lvgl/src/widgets/property/lv_menu_properties.o ./APP/lvgl/src/widgets/property/lv_menu_properties.su ./APP/lvgl/src/widgets/property/lv_obj_properties.cyclo ./APP/lvgl/src/widgets/property/lv_obj_properties.d ./APP/lvgl/src/widgets/property/lv_obj_properties.o ./APP/lvgl/src/widgets/property/lv_obj_properties.su ./APP/lvgl/src/widgets/property/lv_roller_properties.cyclo ./APP/lvgl/src/widgets/property/lv_roller_properties.d ./APP/lvgl/src/widgets/property/lv_roller_properties.o ./APP/lvgl/src/widgets/property/lv_roller_properties.su ./APP/lvgl/src/widgets/property/lv_scale_properties.cyclo ./APP/lvgl/src/widgets/property/lv_scale_properties.d ./APP/lvgl/src/widgets/property/lv_scale_properties.o ./APP/lvgl/src/widgets/property/lv_scale_properties.su ./APP/lvgl/src/widgets/property/lv_slider_properties.cyclo ./APP/lvgl/src/widgets/property/lv_slider_properties.d ./APP/lvgl/src/widgets/property/lv_slider_properties.o ./APP/lvgl/src/widgets/property/lv_slider_properties.su ./APP/lvgl/src/widgets/property/lv_span_properties.cyclo ./APP/lvgl/src/widgets/property/lv_span_properties.d ./APP/lvgl/src/widgets/property/lv_span_properties.o ./APP/lvgl/src/widgets/property/lv_span_properties.su ./APP/lvgl/src/widgets/property/lv_spinbox_properties.cyclo ./APP/lvgl/src/widgets/property/lv_spinbox_properties.d ./APP/lvgl/src/widgets/property/lv_spinbox_properties.o ./APP/lvgl/src/widgets/property/lv_spinbox_properties.su ./APP/lvgl/src/widgets/property/lv_spinner_properties.cyclo ./APP/lvgl/src/widgets/property/lv_spinner_properties.d ./APP/lvgl/src/widgets/property/lv_spinner_properties.o ./APP/lvgl/src/widgets/property/lv_spinner_properties.su ./APP/lvgl/src/widgets/property/lv_style_properties.cyclo ./APP/lvgl/src/widgets/property/lv_style_properties.d ./APP/lvgl/src/widgets/property/lv_style_properties.o ./APP/lvgl/src/widgets/property/lv_style_properties.su ./APP/lvgl/src/widgets/property/lv_switch_properties.cyclo ./APP/lvgl/src/widgets/property/lv_switch_properties.d ./APP/lvgl/src/widgets/property/lv_switch_properties.o ./APP/lvgl/src/widgets/property/lv_switch_properties.su ./APP/lvgl/src/widgets/property/lv_table_properties.cyclo ./APP/lvgl/src/widgets/property/lv_table_properties.d ./APP/lvgl/src/widgets/property/lv_table_properties.o ./APP/lvgl/src/widgets/property/lv_table_properties.su ./APP/lvgl/src/widgets/property/lv_tabview_properties.cyclo ./APP/lvgl/src/widgets/property/lv_tabview_properties.d ./APP/lvgl/src/widgets/property/lv_tabview_properties.o ./APP/lvgl/src/widgets/property/lv_tabview_properties.su ./APP/lvgl/src/widgets/property/lv_textarea_properties.cyclo ./APP/lvgl/src/widgets/property/lv_textarea_properties.d ./APP/lvgl/src/widgets/property/lv_textarea_properties.o ./APP/lvgl/src/widgets/property/lv_textarea_properties.su

.PHONY: clean-APP-2f-lvgl-2f-src-2f-widgets-2f-property

