/*
  Ice Nucleation Controller (Field Version) DPM8600 controller

    DPM8624 Programmable Power Supply
    https://joy-it.net/en/products/JT-DPM8624

    Primary driver for QC-241-1.6-15.0 Peltier Element
    https://quickcool-shop.de/eng_288/QC-241-1.6-15.0M

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"
uint8_t outputPct = 0;
DPM8600 psu;

// Set PSU out voltage and current
void PSUSetOutput(float voltage, float current) {
  voltage = constrain(voltage, 0, VOLTAGE_MAX);
  current = constrain(current, 0, CURRENT_MAX);
  psu.writeVC(voltage, current);
}

// Disable PSU output
void PSUDisable() {
  psu.power(false);
  delay(20);
  PSUSetOutput(0, 0);
}
// Enable PSU output
void PSUEnable() {
  psu.power(true);
}

// Returns current output (0-100%)
uint8_t GetPSUOutput() {
  return outputPct;
}

void SendVoltage(float voltage, float current) {
}

// Process PSU control (0-100% output)
void PSUProcess(int8_t _outputPct) {
  outputPct = _outputPct;
  if (outputPct == 0) {
    PSUDisable();
    return;
  }

  float voltage = outputPct * (float)VOLTAGE_MAX / 100.0f;  // conversion

  PSUSetOutput(voltage, CURRENT_MAX);
}

// Initialize PSU communication
void PSUInitialize() {
  COM_SERIAL_PSU.begin(PSU_BAUDRATE);

  psu.begin(COM_SERIAL_PSU);

  PSUSetOutput(0, 0);
  PSUDisable();
}

// Terminate PSU communication
void PSUTerminate() {
  PSUDisable();
}