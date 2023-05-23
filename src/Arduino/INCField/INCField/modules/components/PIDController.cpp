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

// Specify the links and initial tuning parameters
PID myPID(&temp, &output, &targetTemperature, 2, 5, 1, P_ON_M, DIRECT);  // P_ON_M specifies that Proportional on Measurement be used
                                                                         // P_ON_E (Proportional on Error) is the default behavior

// Primary PID Process
void PIDProcess() {
  myPID.Compute();

  PSUProcess(output);
}

// Initialize PID controller
void PIDInitialize() {
  myPID.SetMode(AUTOMATIC);
}

// Terminate PID controller
void PIDTerminate() {
}

// Returns current target Temperature
double GetTargetTemperature() {
  return targetTemperature;
}

// Update current target Temperature
double SetTargetTemperature(double _targetTemperature) {
  targetTemperature = _targetTemperature;
}