/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.
*/

#define pinLed 13
#define DEBUGSERIALno

void blinkled(int pin, unsigned long blinkdelay) {
  static unsigned long time=0;
  static int state = HIGH;

  if ( (millis()-time) > blinkdelay ) {
        time=millis();
                //  condition ? thenstatement: elsestatement;
        state = (state == LOW) ? HIGH: LOW;
        digitalWrite(pin, state);   // sets the LED on
        
        #ifdef DEBUGSERIAL
          if (state == LOW) Serial.println("blink");
        #endif
  };
  return;
}

void setup() {
  // Pin 13 has an LED connected on most Arduino boards:
  // initialize digital pin 13 as an output.
  pinMode(pinLed, OUTPUT);

  #ifdef DEBUGSERIAL
    // 300, 600, 1200, 2400, 4800, 9600, 19200, 38400, 57600, or 115200
    Serial.begin(57600);  
    Serial.println("blink startup");
  #endif
}

void loop() {
    blinkled(pinLed, 1000);
}
