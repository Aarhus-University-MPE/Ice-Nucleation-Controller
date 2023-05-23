/*
  Lake Profiler EEPROM memory allocation

  Mads Rosenhøj Jepepsen
  Aarhus University
  2022
*/

#pragma once

// Read/Write functions
#define EEPROM_READ_INT(addr)               (int)(((EEPROM.read(addr) << 0) & 0xFF) + ((EEPROM.read(addr + 1) << 8) & 0xFF00))
#define EEPROM_READ_UINT(addr)              (unsigned int)(((EEPROM.read(addr) << 0) & 0xFF) + ((EEPROM.read(addr + 1) << 8) & 0xFF00))

#define EEPROM_READ_ULONG(addr, ulongValue) EEPROM.get(addr, ulongValue)
//(unsigned long)((unsigned long)((EEPROM.read(addr) << 0) & 0xFF) + (unsigned long)((EEPROM.read(addr + 1) << 8) & 0xFF00) + (unsigned long)((EEPROM.read(addr + 2) << 16) & 0xFF0000) + (unsigned long)((EEPROM.read(addr + 3) << 24) & 0xFF000000))

#define EEPROM_WRITE_UINT(addr, uintValue)  EEPROM.put(addr, uintValue)
#define EEPROM_WRITE_INT(addr, intValue)    EEPROM.put(addr, intValue)

// PID
#define MEMADDR_PID_KP                      0
#define MEMADDR_PID_KI                      4
#define MEMADDR_PID_KD                      8

// Temperature controller
#define MEMADDR_TARGETTEMP                  12
