################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../main.cpp 

OBJS += \
./main.o 

CPP_DEPS += \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"/work/opensource/personal/microcontroller/arduino/core/ArduinoCore" -I"/work/opensource/personal/microcontroller/arduino/core/ArduinoCore/variants/standard" -I"/work/opensource/personal/microcontroller/arduino/driver/sensor/pressure/ArduinoBarometer/Barometer" -I"/work/opensource/personal/microcontroller/arduino/driver/sensor/pressure/ArduinoBarometer/BMP085Barometer" -I"/work/opensource/personal/microcontroller/arduino/driver/device/EepromBasedWiredDevice" -I"/work/opensource/personal/microcontroller/arduino/driver/device/RegisterBasedWiredDevice" -I"/work/opensource/personal/microcontroller/arduino/driver/device/WiredDevice" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


