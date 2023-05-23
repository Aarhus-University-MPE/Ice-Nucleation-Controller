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
void parseCommandPID();

// LED
void GreenLED(bool state);
void RedLED(bool state);

// Variables
enum SYSTEMSTATE {
  SYSTEMSTATE_SPLASH = 0,
  SYSTEMSTATE_INIT   = 1,
  SYSTEMSTATE_INPUT  = 2,
  SYSTEMSTATE_ACTIVE = 3
};

// LCD
void LCDInitialize();
void LCDReset();
void LCDDraw();

// Screens
void DrawActive();
void ScrollActive(int8_t value);
void ScrollInput(int8_t value);
void ClickActive();
void ClickInput();
void DrawInput();
void DrawSplash();
void InitializeActiveScreen();
void InitializeInputScreen();

// HMI
void HMIInitialize();
void HMITerminate();
void SetSystemState(SYSTEMSTATE _systemState);
SYSTEMSTATE SystemState();
void HMIScroll(int8_t value);
void HMIClick();
int8_t GetPosition();
bool GetClickState();
void HMIProcess();
bool SystemActive();

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
void InitializePIDEEPROMValues();

void UpdatePIDTunings();
void PIDSetKp(double _Kp);
void PIDSetKi(double _Ki);
void PIDSetKd(double _Kd);
double PIDGetKp();
double PIDGetKi();
double PIDGetKd();

// Pump
void PumpInitialize();
void PumpTerminate();
void PumpStart();
void PumpStop();
void SetPumpState(bool state);
bool GetPumpState();

// PSU
void PSUInitialize();
void PSUTerminate();
void PSUEnable();
void PSUProcess(int8_t _outputPct);

// PT100
void PT100Initialize();
float GetTemperature();

// Buzzer
void BuzzerBeep();
void BuzzerInitialize();