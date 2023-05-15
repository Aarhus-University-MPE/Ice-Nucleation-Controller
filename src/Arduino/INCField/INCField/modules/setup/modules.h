#pragma once

#include <Arduino.h>

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
#include "../components/LCD.cpp"
#include "../components/PIDController.cpp"
#include "../components/PSU.cpp"
#include "../components/PT100.cpp"
