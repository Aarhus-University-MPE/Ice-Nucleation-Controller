/*
  Ice Nucleation Controller (Field Version) temperature controller

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"
#include "PID_v1.h"

// Define Variables we'll be connecting to
double targetTemperature, temp, output;
double Kp = 1, Ki = 1, Kd = 1;

// Specify the links and initial tuning parameters
PID PIDController(&temp, &output, &targetTemperature, Kp, Ki, Kd, P_ON_M, REVERSE);  // P_ON_M specifies that Proportional on Measurement be used
                                                                                     // P_ON_E (Proportional on Error) is the default behavior

unsigned long lastMillisPID = 0;

// Primary PID Process
void PIDProcess() {
  if (!SystemActive()) return;

  if (millis() - lastMillisPID < PID_PERIOD) return;
  lastMillisPID = millis();

  temp = GetTemperature();

  PIDController.Compute();

  PSUProcess(output);
}

// Initialize PID controller
void PIDInitialize() {
  PIDController.SetMode(AUTOMATIC);
  PIDController.SetOutputLimits(0, 100);  // Limit output to 0-100% cooling
  PIDController.SetSampleTime(1000);
  UpdatePIDTunings();
}

// Read PID values from EEPROM
void InitializePIDEEPROMValues() {
  EEPROM.get(MEMADDR_PID_KP, Kp);
  EEPROM.get(MEMADDR_PID_KI, Ki);
  EEPROM.get(MEMADDR_PID_KD, Kd);

  EEPROM.get(MEMADDR_TARGETTEMP, targetTemperature);
}

void PIDSetKp(double _Kp) {
  Kp = _Kp;
  EEPROM.put(MEMADDR_PID_KP, _Kp);
}

void PIDSetKi(double _Ki) {
  Ki = _Ki;
  EEPROM.put(MEMADDR_PID_KI, _Ki);
}

void PIDSetKd(double _Kd) {
  Kd = _Kd;
  EEPROM.put(MEMADDR_PID_KD, _Kd);
}

double PIDGetKp() {
  return PIDController.GetKp();
}

double PIDGetKi() {
  return PIDController.GetKi();
}

double PIDGetKd() {
  return PIDController.GetKd();
}

void UpdatePIDTunings() {
  PIDController.SetTunings(Kp, Ki, Kd);
}

// Terminate PID controller
void PIDTerminate() {
  PIDController.SetMode(MANUAL);
}

// Returns current target Temperature
double GetTargetTemperature() {
  return targetTemperature;
}

// Update current target Temperature
double SetTargetTemperature(double _targetTemperature) {
  targetTemperature = _targetTemperature;
  EEPROM.put(MEMADDR_TARGETTEMP, targetTemperature);
}