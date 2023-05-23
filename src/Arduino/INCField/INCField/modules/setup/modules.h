#pragma once

#include <Arduino.h>
#include <DPM8600.h>
#include <U8g2lib.h>

// Config
#include "../../config/commandlist.h"
#include "../../config/constants.h"
#include "../../config/memory.h"
#include "../../config/pinout.h"

// Function prototypes
#include "./prototypes.h"

// System Control
#include "../system/control.cpp"
#include "../system/pinconfigs.cpp"
#include "../system/usb.cpp"

// Components
#include "../components/Encoder.cpp"
#include "../components/EncoderBtn.cpp"
#include "../components/HMI.cpp"
#include "../components/LCDDriver.cpp"
#include "../components/PIDController.cpp"
#include "../components/PSU.cpp"
#include "../components/PT100.cpp"
#include "../components/Pump.cpp"

// LCD Screens
#include "../screens/active.cpp"
#include "../screens/input.cpp"
#include "../screens/splash.cpp"
