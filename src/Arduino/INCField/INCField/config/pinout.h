/*
  Ice Nucleation Controller (Field Version) system pinout

  Naming pattern (all uppercase):
  P   + <I:input, T: interrupt input, A:analog input, O:output, P:pwm output>_
    + <general part name>_
    + <purpose>_
    + <where applicable: left, right, top, bottom, position etc...>

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../modules/setup/modules.h"

// Transistors (relays)
#define PO_LED_GRN_EN  47
#define PO_LED_RED_EN  48
#define PO_PUMP_EN     49

// Interrupts
#define PT_ENC_A       2   // LCD rotatry encoder A
#define PT_ENC_B       3   // LCD rotatry encoder B
#define PT_ENC_BTN     19  // LCD encoder press

// LCD
#define PO_RST_LCD     43  // Clear LCD
#define PO_CS_LCD      41  // MISO -,  MOSI, 51, SCK 52

// PT100 Sensor Amplifier
#define PO_CS_PT100    42  // MISO 50, MOSI, 51, SCK 52

// Pump
#define PT_PUMP_RPM    18
#define PP_PUMP_PWM    6

// Communication
#define COM_SERIAL_DBG Serial   // TX 1,  RX 0
#define COM_SERIAL_PSU Serial2  // TX 16, RX 17
