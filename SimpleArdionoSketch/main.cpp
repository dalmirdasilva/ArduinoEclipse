#include <Arduino.h>
#include <BMP085Barometer.h>

void setup() {
    Serial.begin(9600);
    Serial.println("initialized...");
    BMP085Barometer barometer = BMP085Barometer(BMP085Barometer::ULTRA_HIGH_RESOLUTION);
    while (true) {
        Serial.print("barometer.getTemperature(): ");
        Serial.print(barometer.getTemperature() / 10);
        Serial.println(" ºC");

        Serial.print("barometer.getPressure(): ");
        Serial.print(barometer.getPressure());
        Serial.println(" Pa");

        Serial.print("barometer.getAltitude(): ");
        Serial.print(barometer.getAltitude());
        Serial.println(" m");

        Serial.print("\n");
        delay(1000);
    }
}

void loop() {
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

