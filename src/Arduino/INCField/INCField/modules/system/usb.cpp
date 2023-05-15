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

bool InitializeDebugComm() {
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
    case '\0':
      break;
    default:
      DEBUG_PRINTLN(F("NACK"));
      break;
  }
}

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