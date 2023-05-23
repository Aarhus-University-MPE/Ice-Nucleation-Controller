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

const float a4 = 0.0000006f;
const float a3 = 0.000001f;
const float a2 = -0.00008f;
const float a1 = -0.0238f;
const float a0 = 0.7086f;

float lastTemp;
unsigned long lastTempUpdate = 0;

// The value of the Rref resistor. Use 430.0 for PT100 and 4300.0 for PT1000
#define RREF      430.0
// The 'nominal' 0-degrees-C resistance of the sensor
// 100.0 for PT100, 1000.0 for PT1000
#define RNOMINAL  100.0

#define T0_OFFSET 0.0f  // TODO: calibrating the sensor in ice+water and 0C offset is subtracted from computed temperatures.

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

// Correct temperature reading
float TemperatureCorrection(float temp) {
  return a4 * pow(temp, 4) + a3 * pow(temp, 3) + a2 * pow(temp, 2) + a1 * temp + a0;
}

// Read and update Temperature values
void UpdateTemperature() {
  digitalWrite(PO_CS_LCD, true);
  uint16_t rtd   = thermo.readRTD();
  float tempRead = thermo.temperature(RNOMINAL, RREF);
  digitalWrite(PO_CS_LCD, false);

  float estimateTemp   = temp - TemperatureCorrection(tempRead);
  float tempCorrection = TemperatureCorrection(estimateTemp);

  lastTemp = tempRead - tempCorrection;
}

// Returns PT100 temperature
float GetTemperature() {
  if (millis() - lastTempUpdate > TEMP_UPDATE_PERIOD) {
    lastTempUpdate = millis();
    UpdateTemperature();
  }

  return lastTemp;
}