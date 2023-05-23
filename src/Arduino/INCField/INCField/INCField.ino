/*
  Ice Nucleation Controller (Field Version)

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#include "./modules/setup/modules.h"

// System initialization
void setup() {
  SystemEnablePrimary();

  SetSystemState(SYSTEMSTATE_INPUT);
}

// Primary loop
void loop() {
  DBG_ONLY(recvWithStartEndMarkers());
  HMIProcess();
  PIDProcess();
}
