#include "OneButton.h"

#define PIN_INPUT 19
#define PIN_LED   LED_BUILTIN

// Setup a new OneButton on pin PIN_INPUT
// The 2. parameter activeLOW is true, because external wiring sets the button to LOW when pressed.
OneButton button(PIN_INPUT, true);

// current LED state, staring with LOW (0)
int ledState = LOW;

// save the millis when a press has started.
unsigned long pressStartTime;

// This function is called from the interrupt when the signal on the PIN_INPUT has changed.
// do not use Serial in here.
void checkTicks() {
  // include all buttons here to be checked
  button.tick();  // just call tick() to check the state.
}

// this function will be called when the button was pressed 1 time only.
void singleClick() {
  Serial.println("singleClick() detected.");
}  // singleClick

// this function will be called when the button was pressed 2 times in a short timeframe.
void doubleClick() {
  Serial.println("doubleClick() detected.");

  ledState = !ledState;  // reverse the LED
  digitalWrite(PIN_LED, ledState);
}  // doubleClick

// this function will be called when the button was pressed multiple times in a short timeframe.
void multiClick() {
  int n = button.getNumberClicks();
  if (n == 3) {
    Serial.println("tripleClick detected.");
  } else if (n == 4) {
    Serial.println("quadrupleClick detected.");
  } else {
    Serial.print("multiClick(");
    Serial.print(n);
    Serial.println(") detected.");
  }

  ledState = !ledState;  // reverse the LED
  digitalWrite(PIN_LED, ledState);
}  // multiClick

// this function will be called when the button was held down for 1 second or more.
void pressStart() {
  Serial.println("pressStart()");
  pressStartTime = millis() - 1000;  // as set in setPressMs()
}  // pressStart()

// this function will be called when the button was released after a long hold.
void pressStop() {
  Serial.print("pressStop(");
  Serial.print(millis() - pressStartTime);
  Serial.println(") detected.");
}  // pressStop()

// setup code here, to run once:
void setup() {
  Serial.begin(115200);
  Serial.println("One Button Example with interrupts.");

  // enable the led output.
  pinMode(PIN_LED, OUTPUT);  // sets the digital pin as output
  digitalWrite(PIN_LED, ledState);

  // setup interrupt routine
  // when not registering to the interrupt the sketch also works when the tick is called frequently.
  attachInterrupt(digitalPinToInterrupt(PIN_INPUT), checkTicks, CHANGE);

  // link the xxxclick functions to be called on xxxclick event.
  button.attachClick(singleClick);
  button.attachDoubleClick(doubleClick);
  button.attachMultiClick(multiClick);

  button.setPressMs(1000);  // that is the time when LongPressStart is called
  button.attachLongPressStart(pressStart);
  button.attachLongPressStop(pressStop);

}  // setup

// main code here, to run repeatedly:
void loop() {
  // keep watching the push button, even when no interrupt happens:
  button.tick();

  // You can implement other code in here or just wait a while
  delay(10);
}  // loop

// End