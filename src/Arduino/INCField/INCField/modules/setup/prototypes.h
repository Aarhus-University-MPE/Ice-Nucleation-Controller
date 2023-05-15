/*
  Ice Nucleation Controller (Field Version) Function Templates protocols

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "./modules.h"

// System
void (*systemReset)(void) = 0;
void InitAllPins();
void SystemEnableSecondary();
void SystemDisableSecondary();

// USB Comm
bool DebugCommInitialize();
void parseCommand();
void parseCommandDebug();

// Variables
enum LCDSTATE {
  LCDSTATE_SPLASH = 0,
  LCDSTATE_INIT   = 1,
  LCDSTATE_INPUT  = 2
};

// LCD
void LCDSetState(LCDSTATE _LCDState);

// HMI
void HMIInitialize();
void HMITerminate();

// Encoder
void EncoderBtnInitialize();
void EncoderBtnTerminate();
void EncoderBtnProcess();
void EncoderInitialize();
void EncoderTerminate();
void EncoderProcess();

// PID
void PIDProcess();
void PIDInitialize();
void PIDTerminate();
