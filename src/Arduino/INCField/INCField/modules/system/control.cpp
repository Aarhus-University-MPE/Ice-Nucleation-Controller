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
  InitAllPins();
  HMIInitialize();
}

// Disable Secondary Systems
void SystemDisableSecondary() {
}

// Enables Secondary Systems
void SystemEnableSecondary() {
}