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
  pumpState = true;
}

// Disable pump power and circulation
void PumpTerminate() {
  pumpState = false;
}

// Returns current output (0-100%)
bool GetPumpState() {
  return pumpState;
}

// Update current pump state
void SetPumpState(bool state) {
  pumpState = state;

  if (pumpState) {
    PumpInitialize();
  } else {
    PumpTerminate();
  }
}