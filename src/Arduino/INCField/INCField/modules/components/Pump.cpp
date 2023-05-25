/*
  Ice Nucleation Controller (Field Version) Pump controller

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"
bool pumpState = false;

// Enable pump power and circulation
void PumpInitialize() {
  // TODO: RPM signal (encoder.attach()?)
}

// Disable pump power and circulation
void PumpTerminate() {
  // TODO: RPM signal (encoder.detach()?)
}

// Returns current output (0-100%)
bool GetPumpState() {
  return pumpState;
}

// Start Pump
void PumpStart() {
  RedLED(true);
  pumpState = true;
  digitalWrite(PO_PUMP_EN, true);
  // analogWrite(PP_PUMP_PWM, 0.5);
}

// Stop Pump
void PumpStop() {
  RedLED(false);
  digitalWrite(PO_PUMP_EN, false);
  // analogWrite(PP_PUMP_PWM, 0);
  pumpState = false;
}

// Update current pump state
void SetPumpState(bool state) {
  if (state) {
    PumpStart();
  } else {
    PumpStop();
  }
}