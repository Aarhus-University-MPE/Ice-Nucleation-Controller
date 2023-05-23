/*
  Ice Nucleation Controller (Field Version) LCD Screens
  - System Active Screen

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"

int8_t menuSelectionActive = 0;
double uiTargetTempActive  = 0;

enum ACTIVESTATE {
  ACTIVESTATE_MENU_TEMP    = 0,
  ACTIVESTATE_MENU_STOP    = 1,
  ACTIVESTATE_TEMP_SELECT  = 2,
  ACTIVESTATE_STOP_CONFIRM = 3,
  ACTIVESTATE_STOP_CANCEL  = 4
};

#define ACTIVEMENU_MAX 1

// Initialize Active Screen
void InitializeActiveScreen() {
  menuSelectionActive = ACTIVESTATE_MENU_TEMP;
  uiTargetTempActive  = GetTargetTemperature();
}

// Scroll through menu
void ScrollActiveMenu(int8_t value) {
  menuSelectionActive += value > 0 ? 1 : -1;
  menuSelectionActive = constrain(menuSelectionActive, 0, ACTIVEMENU_MAX);
}

// Cycle between Confirm/Cancel
void ScrollActiveStopMenu(int8_t value) {
  menuSelectionActive = value > 0 ? ACTIVESTATE_STOP_CANCEL : ACTIVESTATE_STOP_CONFIRM;
}

// Update UI target Temperature
void SetActiveTargetTemperature(int8_t value) {
  uiTargetTempActive += value * TEMP_INCREMENTS;
  uiTargetTempActive = constrain(uiTargetTempActive, TEMP_MIN, TEMP_MAX);
}

// Save Adjusted Target Temperature
void UpdateActiveTargetTemperature() {
  if (uiTargetTempActive == GetTargetTemperature()) return;  // Skip if not changed

  // Update target temperature
  SetActiveTargetTemperature(uiTargetTempActive);
}

// Process scroll inputs based on current selection
void ScrollActive(int8_t value) {
  switch (menuSelectionActive) {
    case ACTIVESTATE_MENU_TEMP:  // Scroll in menu
      ScrollActiveMenu(value);
      break;
    case ACTIVESTATE_MENU_STOP:  // Scroll in menu
      ScrollActiveMenu(value);
      break;
    case ACTIVESTATE_TEMP_SELECT:  // Adjust setState temperature (UI)
      SetActiveTargetTemperature(value);
      break;
    case ACTIVESTATE_STOP_CONFIRM:  // Scroll in Stop menu
      ScrollActiveStopMenu(value);
      break;
    case ACTIVESTATE_STOP_CANCEL:  // Scroll in Stop menu
      ScrollActiveStopMenu(value);
      break;
    default:
      break;
  }
}

// Process click inputs based on current selection
void ClickActive() {
  switch (menuSelectionActive) {
    case ACTIVESTATE_MENU_TEMP:  // Select Target Temperature
      menuSelectionActive = ACTIVESTATE_TEMP_SELECT;
      break;
    case ACTIVESTATE_MENU_STOP:  // Open Stop confirm menu
      menuSelectionActive = ACTIVESTATE_STOP_CONFIRM;
      break;
    case ACTIVESTATE_TEMP_SELECT:  // Save Adjusted Temperature
      UpdateActiveTargetTemperature();
      break;
    case ACTIVESTATE_STOP_CONFIRM:  // Confirm Stop
      // TODO: Stop system
      SetSystemState(SYSTEMSTATE_INPUT);
      break;
    case ACTIVESTATE_STOP_CANCEL:  // Cancel Stop
      menuSelectionActive = ACTIVESTATE_MENU_STOP;
      break;
    default:
      break;
  }
}

// Draw system details
void DrawActiveDetails() {
  lcd.setFont(u8g2_font_helvR08_tf);

  // Header
  lcd.drawUTF8(5, yPos0, "System Active");
  lcd.drawLine(2, yPos0 + 3, 125, yPos0 + 3);

  // Target Temperature
  lcd.drawUTF8(13, yPos1, "Target");

  // Output
  lcd.drawUTF8(13, yPos2, "Output");

  // Start
  lcd.drawUTF8(13, yPos3, "Stop");
}

// Draw Target temperature (Setpoint)
void DrawActiveTemperatureSetpoint() {
  String tempStr    = String(uiTargetTempActive, 1);
  uint8_t textWidth = lcd.getUTF8Width(tempStr.c_str());
  uint8_t xPos      = 105 - textWidth;

  lcd.drawUTF8(xPos, yPos1, tempStr.c_str());
  lcd.drawUTF8(108, yPos1, "°C");
}

// Draw PSU Output value
void DrawActiveOutput() {
  uint8_t output    = GetPSUOutput();
  String tempStr    = String(output);
  uint8_t textWidth = lcd.getUTF8Width(tempStr.c_str());
  uint8_t xPos      = 105 - textWidth;

  lcd.drawUTF8(xPos, yPos2, tempStr.c_str());
  lcd.drawUTF8(108, yPos2, "\%");
}

// Draw System Temperature (PT100)
void DrawActiveSystemTemperature() {
  lcd.setFont(u8g2_font_helvR18_tf);  // Large Font

  // Temperature
  float sysTemp     = GetTemperature();
  String tempStr    = String(sysTemp, 1);
  uint8_t textWidth = lcd.getUTF8Width(tempStr.c_str());
  uint8_t xPos      = 97 - textWidth;

  lcd.drawUTF8(xPos, yPos4, tempStr.c_str());
  lcd.drawUTF8(100, yPos4, "°C");
  lcd.setFont(u8g2_font_helvR08_tf);
}

// Draw selection indicator
void DrawActiveSelectionGlyph() {
  lcd.setFont(u8g2_font_unifont_t_symbols);

  switch (menuSelectionActive) {
    case ACTIVESTATE_MENU_TEMP:
      lcd.drawGlyph(3, yPos1 + 2, 0x25b6);
      lcd.drawGlyph(3, yPos3 + 2, 0x25b7);
      break;
    case ACTIVESTATE_MENU_STOP:
      lcd.drawGlyph(3, yPos1 + 2, 0x25b7);
      lcd.drawGlyph(3, yPos3 + 2, 0x25b6);
      break;
    default:
      lcd.drawGlyph(3, yPos3 + 2, 0x25b7);
      lcd.drawGlyph(3, yPos1 + 2, 0x25b7);
      break;
  }
}

// Draw Stop Confirmation Box
void DrawActiveStopBox() {
  lcd.drawBox(boxXPos, boxYPos, boxWidth, boxHeight);
  lcd.setDrawColor(0);
  lcd.drawBox(boxXPos + 1, boxYPos + 1, boxWidth - 2, boxHeight - 2);
  lcd.setDrawColor(1);
  lcd.drawUTF8(boxXPos + 14, boxYPos + 13, "Stop System?");
}

// Highlight selected text
void DrawActiveTextOutline() {
  uint8_t textWidth, xPos;
  String tempStr;

  switch (menuSelectionActive) {
    case ACTIVESTATE_TEMP_SELECT:
      tempStr   = String(uiTargetTempActive, 1);
      textWidth = lcd.getUTF8Width(tempStr.c_str());
      xPos      = 105 - textWidth;
      lcd.drawBox(xPos - 2, yPos1 - 9, textWidth + 18, 10);
      break;
    case ACTIVESTATE_STOP_CONFIRM:
      lcd.drawBox(boxXPos + 6, boxYPos + boxHeight - 5 - 9, 40, 10);
      break;
    case ACTIVESTATE_STOP_CANCEL:
      lcd.drawBox(boxXPos + boxWidth - 37, boxYPos + boxHeight - 5 - 9, 33, 10);
      break;
    default:
      break;
  }
}

// Draw Selection Popup
void DrawActiveSelection() {
  switch (menuSelectionActive) {
    case ACTIVESTATE_TEMP_SELECT:
      DrawActiveTextOutline();
      lcd.setDrawColor(0);
      DrawActiveTemperatureSetpoint();
      lcd.setDrawColor(1);
      break;
    case ACTIVESTATE_STOP_CONFIRM:
      DrawActiveStopBox();
      DrawActiveTextOutline();
      lcd.setDrawColor(0);
      lcd.drawUTF8(boxXPos + 7, boxYPos + boxHeight - 5, "Confirm");
      lcd.setDrawColor(1);
      lcd.drawUTF8(boxXPos + boxWidth - 36, boxYPos + boxHeight - 5, "Cancel");
      break;
    case ACTIVESTATE_STOP_CANCEL:
      DrawActiveStopBox();
      DrawActiveTextOutline();
      lcd.setDrawColor(0);
      lcd.drawUTF8(boxXPos + boxWidth - 36, boxYPos + boxHeight - 5, "Cancel");
      lcd.setDrawColor(1);
      lcd.drawUTF8(boxXPos + 7, boxYPos + boxHeight - 5, "Confirm");
      break;
    default:
      break;
  }
}

// Startup screen
void DrawActive() {
  DrawActiveDetails();
  DrawActiveTemperatureSetpoint();
  DrawActiveOutput();
  DrawActiveSystemTemperature();
  DrawActiveSelectionGlyph();
  DrawActiveSelection();
}
