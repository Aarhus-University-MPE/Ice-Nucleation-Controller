/*
  Ice Nucleation Controller (Field Version) System control

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once
#include "../setup/modules.h"

// Enables Primary Systems
void SystemEnablePrimary() {
  DBG_ONLY(DebugCommInitialize());
  InitAllPins();
  InitializePIDEEPROMValues();
  HMIInitialize();
  PSUInitialize();
  PT100Initialize();
  BuzzerInitialize();
  GreenLED(true);
}

// Enables Secondary Systems
void SystemEnableSecondary() {
  PIDInitialize();
  PSUEnable();
  PumpInitialize();
  SetPumpState(true);
}

// Disable Secondary Systems
void SystemDisableSecondary() {
  PIDTerminate();
  PSUTerminate();
  PumpTerminate();
  SetPumpState(false);
}
