/*
  Ice Nucleation Controller (Field Version) constants

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../modules/setup/modules.h"

// ------------------------------------------------------------ //
//                            DEBUG                             //
// ------------------------------------------------------------ //

// Debug configuration flag - Comment out to unset
#define DEBUG

#if defined(DEBUG)
#define DBG_ONLY(x)          x
#define DEBUG_PRINT(x)       Serial.print(x)
#define DEBUG_PRINT2(x, y)   Serial.print(x, y)
#define DEBUG_PRINTLN(x)     Serial.println(x)
#define DEBUG_PRINTLN2(x, y) Serial.println(x, y)
#define DEBUG_PRINTLINE()    Serial.println(F("------------------------------------"))
#define DEBUG_WRITE(x)       Serial.write(x)
#define RECEIVE_CMDS()       recvWithStartEndMarkers()
#else
#define DBG_ONLY(x)
#define DEBUG_PRINT(x)
#define DEBUG_PRINT2(x, y)
#define DEBUG_PRINTLN(x)
#define DEBUG_PRINTLN2(x, y)
#define DEBUG_PRINTLINE()
#define DEBUG_WRITE(x)
#define RECEIVE_CMDS()
#endif

// ------------------------------------------------------------ //
//                           SYSTEM                             //
// ------------------------------------------------------------ //
#define SystemVersion   "0.00.01"

// ------------------------------------------------------------ //
//                             LCD                              //
// ------------------------------------------------------------ //
#define LCD_DRAW_PERIOD 200

// ------------------------------------------------------------ //
//                       TEMP CONTROLLER                        //
// ------------------------------------------------------------ //
#define TEMP_INCREMENTS 0.5f
#define TEMP_MAX        20
#define TEMP_MIN        -40

#define VOLTAGE_MAX     26.7f
#define CURRENT_MAX     13.6f

// ------------------------------------------------------------ //
//                        COMMUNICATION                         //
// ------------------------------------------------------------ //
#define DEBUG_BAUDRATE  115200