#pragma once

#include "../setup/modules.h"

// Sets pinmode of all pins and writes initial values for outputs
void InitAllPins() {
  pinMode(PO_LED_GRN_EN, OUTPUT);
  pinMode(PO_LED_RED_EN, OUTPUT);
  pinMode(PO_PUMP_EN, OUTPUT);

  pinMode(PP_PUMP_PWM, OUTPUT);
  analogWrite(PP_PUMP_PWM, 0);

  digitalWrite(PO_LED_GRN_EN, false);
  digitalWrite(PO_LED_RED_EN, false);
  digitalWrite(PO_PUMP_EN, false);
}
