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
	avr-g++ -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoCore" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoCore/variants/standard" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoAccelerometerDriver/Accelerometer" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoAccelerometerDriver/AccelerometerADXL335" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoAccelerometerDriver/AccelerometerMMA7455" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoAccelerometerDriver/AccelerometerMMA8451" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoAccelerometerDriver/AccelerometerMPU9250" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoAccelerometerDriver/AccelerometerNunchuk" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoDevice/EepromBasedWiredDevice" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoDevice/RegisterBasedWiredDevice" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoDevice/WiredDevice" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoCore/libraries/Wire/src" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoGyroscope/Gyroscope" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoGyroscope/GyroscopeMPU6050" -I"/work/opensource/personal/microcontroller/arduino/ArduinoLibraries/ArduinoGyroscope/GyroscopeMPU9250" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


