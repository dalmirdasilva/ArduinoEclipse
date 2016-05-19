#include <Arduino.h>
#include <Wire.h>
#include <WiredDevice.h>
#include <RegisterBasedWiredDevice.h>
#include <Gyroscope.h>
#include <GyroscopeMPU9250.h>

GyroscopeMPU9250 gyro(0);
unsigned char buf[6];
unsigned long now;

void setup() {
    Serial.begin(9600);
    gyro.enableAxis(GyroscopeMPU9250::AXIS_XYZ);
    gyro.setFullScaleRange(GyroscopeMPU9250::FS_SEL_1000DPS);
}

void loop() {
    gyro.readXYZ(buf);
    Serial.write(0xaa);
    Serial.write(buf, 6);
    Serial.write(0x00);
    now = millis();
    Serial.write((unsigned char *) &now, 4);
    Serial.write(0xbb);
}

int main(void) {

    init();

#if defined(USBCON)
    USBDevice.attach();
#endif

    setup();

    for (;;) {
        loop();
        if (serialEventRun)
            serialEventRun();
    }

    return 0;
}

