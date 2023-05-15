/*
  Ice Nucleation Controller (Field Version) Encoder functionalities

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"
#include "OneButton.h"

#define BTN_INT digitalPinToInterrupt(PT_ENC_BTN)

OneButton button(PT_ENC_BTN, true);

// save the millis when a press has started.
unsigned long pressStartTime;

// This function is called from the interrupt when the signal on the PIN_INPUT has changed.
void checkTicks() {
  button.tick();  // just call tick() to check the state.
}

// this function will be called when the button was pressed 1 time only.
void singleClick() {
}

// this function will be called when the button was pressed 2 times in a short timeframe.
void doubleClick() {
}

// this function will be called when the button was pressed multiple times in a short timeframe.
void multiClick() {
  int n = button.getNumberClicks();
}

// this function will be called when the button was held down for 1 second or more.
void pressStart() {
  pressStartTime = millis() - 1000;  // as set in setPressMs()
}

// this function will be called when the button was released after a long hold.
void pressStop() {
  unsigned long holdDuration = millis() - pressStartTime;
}

// Inititalize Encoder Button
void EncoderBtnInitialize() {
  attachInterrupt(BTN_INT, checkTicks, CHANGE);

  // link the xxxclick functions to be called on xxxclick event.
  button.attachClick(singleClick);
  button.attachDoubleClick(doubleClick);
  button.attachMultiClick(multiClick);

  button.setPressMs(1000);  // that is the time when LongPressStart is called
  button.attachLongPressStart(pressStart);
  button.attachLongPressStop(pressStop);
}

void EncoderBtnTerminate() {
  detachInterrupt(BTN_INT);
}

// Tick buttons
void EncoderBtnProcess() {
  button.tick();
}