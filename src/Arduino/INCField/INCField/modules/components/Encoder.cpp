/*
  Ice Nucleation Controller (Field Version) Encoder functionalities

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"
#include "EncoderStepCounter.h"

#define ENCODER_INT1 digitalPinToInterrupt(PT_ENC_A)
#define ENCODER_INT2 digitalPinToInterrupt(PT_ENC_B)

int16_t position = 0;

// Create instance for one full step encoder
EncoderStepCounter encoder(PT_ENC_A, PT_ENC_B);
// Use the following for half step encoders
// EncoderStepCounter encoder(ENCODER_PIN1, ENCODER_PIN2, HALF_STEP);

// Call tick on every change interrupt
void interrupt() {
  encoder.tick();
}

void EncoderInitialize() {
  // Initialize encoder
  encoder.begin();

  // Initialize interrupts
  attachInterrupt(ENCODER_INT1, interrupt, CHANGE);
  attachInterrupt(ENCODER_INT2, interrupt, CHANGE);
}

void EncoderTerminate() {
  detachInterrupt(ENCODER_INT1);
  detachInterrupt(ENCODER_INT2);
}

void EncoderProcess() {
  int8_t pos = encoder.getPosition();
  if (pos == 0) return;
  position += pos;
  encoder.reset();
}