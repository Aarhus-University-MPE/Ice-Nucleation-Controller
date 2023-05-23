/*
  Ice Nucleation Controller (Field Version) LED controller

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"

// Set Green LED state
void GreenLED(bool state) {
  digitalWrite(PO_LED_GRN_EN, state);
}

// Set Red LED state
void RedLED(bool state) {
  digitalWrite(PO_LED_RED_EN, state);
}
