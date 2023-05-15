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
double setPoint, temp, voltage;

// Specify the links and initial tuning parameters
PID myPID(&temp, &voltage, &setPoint, 2, 5, 1, P_ON_M, DIRECT);  // P_ON_M specifies that Proportional on Measurement be used
                                                                 // P_ON_E (Proportional on Error) is the default behavior

void PIDProcess() {
  myPID.Compute();
}

void PIDInitialize() {
  // turn the PID on
  myPID.SetMode(AUTOMATIC);
}

void PIDTerminate() {
}