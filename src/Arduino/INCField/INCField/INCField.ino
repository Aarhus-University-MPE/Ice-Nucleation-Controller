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

  delay(150);  // Boot time
}

// Primary loop
void loop() {
  HMIProcess();
  PIDProcess();
}
