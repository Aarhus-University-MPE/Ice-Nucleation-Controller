/*
  Ice Nucleation Controller (Field Version) HMI functionalities

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"

SYSTEMSTATE systemState = SYSTEMSTATE_SPLASH;

// Returns if current
bool GetActive() {
  return systemState == SYSTEMSTATE_ACTIVE;
}

// Handle Clicks
void HMIClick() {
  switch (systemState) {
    case SYSTEMSTATE_ACTIVE:
      ClickActive();
      break;
    case SYSTEMSTATE_INPUT:
      ClickInput();
      break;

    default:
      break;
  }
}

// Handle Scrolls
void HMIScroll(int8_t value) {
  switch (systemState) {
    case SYSTEMSTATE_ACTIVE:
      ScrollActive(value);
      break;
    case SYSTEMSTATE_INPUT:
      ScrollInput(value);
      break;

    default:
      break;
  }
}

// Set LCD State
void SetSystemState(SYSTEMSTATE _systemState) {
  systemState = _systemState;

  switch (systemState) {
    case SYSTEMSTATE_ACTIVE:
      InitializeActiveScreen();
      break;
    case SYSTEMSTATE_INPUT:
      InitializeInputScreen();
      break;
    default:
      break;
  }
}

SYSTEMSTATE SystemState() {
  return systemState;
}

// Initialize Input systems
void HMIInitialize() {
  SetSystemState(SYSTEMSTATE_SPLASH);
  EncoderInitialize();
  EncoderBtnInitialize();
  LCDInitialize();
}

// Disable all HMI process
void HMITerminate() {
  EncoderTerminate();
  EncoderBtnTerminate();
  LCDReset();
}

// Primary Input process
void HMIProcess() {
  EncoderBtnProcess();
  EncoderProcess();
  LCDDraw();
}