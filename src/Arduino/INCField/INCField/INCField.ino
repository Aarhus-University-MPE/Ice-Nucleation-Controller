/*
  Ice Nucleation Controller (Field Version)

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#include "./modules/setup/modules.h"

void setup() {
  // System initialization
  SystemEnablePrimary();

  delay(150);
}

void loop() {
  HMIProcess();
  PIDProcess();
}
