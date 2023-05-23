/*
    USB communication, handles reading serial and parsing commands.

    By
    Mads Rosenhoej Jeppesen - Aarhus 2021
    mrj@mpe.au.dk

    Query data from Drill Logger SD card
*/

#pragma once

#include "../setup/modules.h"

const byte numChars = 200;
char receivedCMD[numChars];

bool DebugCommInitialize() {
  COM_SERIAL_DBG.begin(DEBUG_BAUDRATE);

  if (COM_SERIAL_DBG) {
    DEBUG_PRINTLN(F("#--------------------------------#"));
    DEBUG_PRINTLN(F("#    Ice Nucleation Controller   #"));
    DEBUG_PRINTLN(F("#         Field Version          #"));
    DEBUG_PRINT(F("#              "));
    DEBUG_PRINT(SystemVersion);
    DEBUG_PRINTLN(F("           #"));
    DEBUG_PRINTLN(F("#--------------------------------#"));
    DEBUG_PRINTLN();
  }

  return COM_SERIAL_DBG;
}

// Receive Commands
void recvWithStartEndMarkers() {
  static boolean recvInProgress = false;
  static byte ndx               = 0;
  char startMarker              = '<';
  char endMarker                = '>';
  char rc;

  while (COM_SERIAL_DBG.available() > 0) {
    rc = COM_SERIAL_DBG.read();

    if (recvInProgress == true) {
      if (rc != endMarker) {
        receivedCMD[ndx] = rc;
        ndx++;
        if (ndx >= numChars) {
          ndx = numChars - 1;
        }
      } else {
        receivedCMD[ndx] = '\0';  // terminate the string
        recvInProgress   = false;
        ndx              = 0;
        parseCommand();
      }
    }

    else if (rc == startMarker) {
      recvInProgress = true;
    }
  }
}

// Parse read Command
void parseCommand() {
  DEBUG_PRINTLINE();
  DEBUG_PRINT(F("Received command (DBG_PRT): \""));
  DEBUG_PRINT(receivedCMD);
  DEBUG_PRINTLN(F("\""));

  switch (receivedCMD[0]) {
    case CMD_DEBUG:
      parseCommandDebug();
      break;
    case CMD_PID:
      parseCommandPID();
      break;
    case '\0':
      break;
    default:
      DEBUG_PRINTLN(F("NACK"));
      break;
  }
}

// Handle Debug commands
void parseCommandDebug() {
  char *levelPtr           = receivedCMD + 2;
  char levelChar[numChars] = {0};
  strcpy(levelChar, levelPtr);

  int integer = atoi(levelChar);

  switch (receivedCMD[1]) {
    case CMD_DEBUG_A:
      break;
    case CMD_DEBUG_B:
      break;
    case CMD_DEBUG_C:
      break;
    default:
      DEBUG_PRINTLN(F("NACK"));
      break;
  }
}

// Handle PID commands
void parseCommandPID() {
  char *levelPtr           = receivedCMD + 2;
  char valueChar[numChars] = {0};
  strcpy(valueChar, levelPtr);

  int integer = atoi(valueChar);

  switch (receivedCMD[1]) {
    case CMD_PID_UPDATE:
      DEBUG_PRINTLN(F("Updating PID tunings"));
      UpdatePIDTunings();
      break;
    case CMD_PID_SETKP:
      DEBUG_PRINT(F("Transferring Kp value: "));
      DEBUG_PRINTLN((float)integer / 10000.0f);
      PIDSetKp((float)integer / 10000.0f);
      break;
    case CMD_PID_SETKI:
      DEBUG_PRINT(F("Transferring Ki value: "));
      DEBUG_PRINTLN((float)integer / 10000.0f);
      PIDSetKi((float)integer / 10000.0f);
      break;
    case CMD_PID_SETKD:
      DEBUG_PRINT(F("Transferring Kd value: "));
      DEBUG_PRINTLN((float)integer / 10000.0f);
      PIDSetKd((float)integer / 10000.0f);
      break;
    case CMD_PID_GETKP:
      DEBUG_PRINT(F("PID Tuning (Kp): "));
      DEBUG_PRINTLN(PIDGetKp());
      break;
    case CMD_PID_GETKI:
      DEBUG_PRINT(F("PID Tuning (Ki): "));
      DEBUG_PRINTLN(PIDGetKi());
      break;
    case CMD_PID_GETKD:
      DEBUG_PRINT(F("PID Tuning (Kd): "));
      DEBUG_PRINTLN(PIDGetKd());
      break;
    default:
      DEBUG_PRINTLN(F("NACK"));
      break;
  }
}
void CountDownPrint() {
  DEBUG_PRINT(F("3"));
  delay(333);
  DEBUG_PRINT(F("."));
  delay(333);
  DEBUG_PRINT(F(". "));
  delay(333);
  DEBUG_PRINT(F("2"));
  delay(333);
  DEBUG_PRINT(F("."));
  delay(333);
  DEBUG_PRINT(F(". "));
  delay(333);
  DEBUG_PRINT(F("1"));
  delay(333);
  DEBUG_PRINT(F("."));
  delay(333);
  DEBUG_PRINTLN(F(". "));
  delay(333);
}