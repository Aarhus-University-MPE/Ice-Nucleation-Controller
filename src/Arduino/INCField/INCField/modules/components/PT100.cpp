/*
  Ice Nucleation Controller (Field Version) PT100 sensor amplifier

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"
#include "Adafruit_MAX31865.h"

Adafruit_MAX31865 thermo = Adafruit_MAX31865(PO_CS_PT100);

// The value of the Rref resistor. Use 430.0 for PT100 and 4300.0 for PT1000
#define RREF     430.0
// The 'nominal' 0-degrees-C resistance of the sensor
// 100.0 for PT100, 1000.0 for PT1000
#define RNOMINAL 100.0

// Initialize PT100 sensor amplifier
void PT100Initialize() {
  thermo.begin(MAX31865_4WIRE);
}

void CheckFaults() {
  uint8_t fault = thermo.readFault();
  if (fault) {
    DEBUG_PRINT("Fault 0x");
    DEBUG_PRINTLN2(fault, HEX);
    if (fault & MAX31865_FAULT_HIGHTHRESH) {
      DEBUG_PRINTLN("RTD High Threshold");
    }
    if (fault & MAX31865_FAULT_LOWTHRESH) {
      DEBUG_PRINTLN("RTD Low Threshold");
    }
    if (fault & MAX31865_FAULT_REFINLOW) {
      DEBUG_PRINTLN("REFIN- > 0.85 x Bias");
    }
    if (fault & MAX31865_FAULT_REFINHIGH) {
      DEBUG_PRINTLN("REFIN- < 0.85 x Bias - FORCE- open");
    }
    if (fault & MAX31865_FAULT_RTDINLOW) {
      DEBUG_PRINTLN("RTDIN- < 0.85 x Bias - FORCE- open");
    }
    if (fault & MAX31865_FAULT_OVUV) {
      DEBUG_PRINTLN("Under/Over voltage");
    }
    thermo.clearFault();
  }
}

float GetTemperature() {
  uint16_t rtd = thermo.readRTD();

  CheckFaults();

  return thermo.temperature(RNOMINAL, RREF);
}