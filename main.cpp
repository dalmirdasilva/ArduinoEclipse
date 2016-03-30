#include <Arduino.h>

#define LED_PIN 13

void setup() {
    pinMode(LED_PIN, OUTPUT);
}

void loop() {
    digitalWrite(LED_PIN, HIGH);
	delay(500);
    digitalWrite(LED_PIN, LOW);
	delay(500);
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

