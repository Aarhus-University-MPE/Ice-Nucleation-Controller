/*
  Ice Nucleation Controller (Field Version) HMI functionalities

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"

int16_t setPoint = 0;  // TODO: add to EEPROM
bool active      = false;

int8_t GetSetpoint() {
  return setPoint;
}

int8_t SetSetpoint(int8_t _setpoint) {
  setPoint = _setpoint;
}

bool GetActive() {
  return active;
}

void SetActive(bool _active) {
  active = _active;
}

void HMIInitialize() {
  // Initialize encoder
  EncoderInitialize();
  EncoderBtnInitialize();
}

void HMITerminate() {
  EncoderTerminate();
}

void HMIProcess() {
  EncoderProcess();
}