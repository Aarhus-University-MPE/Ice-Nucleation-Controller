/*
  Ice Nucleation Controller (Field Version) LCD Screens

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"

int8_t menuSelectionInput = 0;
double uiTargetTempInput  = 0;

bool pumpStateUI = false;

enum INPUTSTATE {
  INPUTSTATE_MENU_TEMP     = 0,
  INPUTSTATE_MENU_PUMP     = 1,
  INPUTSTATE_MENU_START    = 2,
  INPUTSTATE_TEMP_SELECT   = 3,
  INPUTSTATE_PUMP_SELECT   = 4,
  INPUTSTATE_START_CONFIRM = 5,
  INPUTSTATE_START_CANCEL  = 6
};

#define INPUTMENU_MAX 2

// Initialize Input Screen
void InitializeInputScreen() {
  menuSelectionInput = INPUTSTATE_MENU_TEMP;
  uiTargetTempInput  = GetTargetTemperature();
  pumpStateUI        = GetPumpState();
}

// Scroll through menu
void ScrollInputMenu(int8_t value) {
  menuSelectionInput += value > 0 ? 1 : -1;
  menuSelectionInput = constrain(menuSelectionInput, 0, INPUTMENU_MAX);
}

// Cycle between Confirm/Cancel
void ScrollInputStartMenu(int8_t value) {
  menuSelectionInput = value > 0 ? INPUTSTATE_START_CANCEL : INPUTSTATE_START_CONFIRM;
}

// Update UI target Temperature
void SetInputTargetTemperature(int8_t value) {
  uiTargetTempInput += value * TEMP_INCREMENTS;
  uiTargetTempInput = constrain(uiTargetTempInput, TEMP_MIN, TEMP_MAX);
}

// Cycle between Pump State
void ScrollInputPumpMenu(int8_t value) {
  pumpStateUI = value > 0 ? true : false;
}

// Save Adjusted Target Temperature
void UpdateInputTargetTemperature() {
  if (uiTargetTempInput == GetTargetTemperature()) return;  // Skip if not changed

  // Update target temperature
  SetInputTargetTemperature(uiTargetTempInput);
}

// Save adjusted Pump State
void UpdateInputPumpState() {
  if (pumpStateUI == GetPumpState()) return;  // Skip if not changed

  SetPumpState(pumpStateUI);
}

// Process Scroll input based on current selection
void ScrollInput(int8_t value) {
  switch (menuSelectionInput) {
    case INPUTSTATE_MENU_TEMP:  // Scroll in menu
      ScrollInputMenu(value);
      break;
    case INPUTSTATE_MENU_PUMP:  // Scroll in menu
      ScrollInputMenu(value);
      break;
    case INPUTSTATE_MENU_START:  // Scroll in menu
      ScrollInputMenu(value);
      break;
    case INPUTSTATE_TEMP_SELECT:  // Adjust setState temperature (UI)
      SetInputTargetTemperature(value);
      break;
    case INPUTSTATE_PUMP_SELECT:  // Adjust setState temperature (UI)
      SetInputTargetTemperature(value);
      break;
    case INPUTSTATE_START_CONFIRM:  // Scroll in Start menu
      ScrollInputStartMenu(value);
      break;
    case INPUTSTATE_START_CANCEL:  // Scroll in Start menu
      ScrollInputStartMenu(value);
      break;
    default:
      break;
  }
}

// Process click inputs based on current selection
void ClickInput() {
  switch (menuSelectionInput) {
    case INPUTSTATE_MENU_TEMP:  // Select Target Temperature
      menuSelectionInput = INPUTSTATE_TEMP_SELECT;
      break;
    case INPUTSTATE_MENU_PUMP:  // Select Target Temperature
      menuSelectionInput = INPUTSTATE_PUMP_SELECT;
      break;
    case INPUTSTATE_MENU_START:  // Open Start confirm menu
      menuSelectionInput = INPUTSTATE_START_CONFIRM;
      break;
    case INPUTSTATE_TEMP_SELECT:  // Save Adjusted Temperature
      UpdateInputTargetTemperature();
      break;
    case INPUTSTATE_PUMP_SELECT:  // Save Adjusted Temperature
      UpdateInputPumpState();
      break;
    case INPUTSTATE_START_CONFIRM:  // Confirm Start
      // TODO: Start system
      SetSystemState(SYSTEMSTATE_ACTIVE);
      break;
    case INPUTSTATE_START_CANCEL:  // Cancel Start
      menuSelectionInput = INPUTSTATE_MENU_START;
      break;
    default:
      break;
  }
}

// Draw system details
void DrawInputDetails() {
  lcd.setFont(u8g2_font_helvR08_tf);

  // Header
  lcd.drawUTF8(5, yPos0, "Setup");
  lcd.drawLine(2, yPos0 + 3, 125, yPos0 + 3);

  // Target Temperature
  lcd.drawUTF8(13, yPos1, "Target");

  // Output
  lcd.drawUTF8(13, yPos2, "Pump");

  // Start
  lcd.drawUTF8(13, yPos3, "Start");
}

// Draw Target temperature (Setpoint)
void DrawInputTemperatureSetpoint() {
  String tempStr    = String(uiTargetTempInput, 1);
  uint8_t textWidth = lcd.getUTF8Width(tempStr.c_str());
  uint8_t xPos      = 105 - textWidth;

  lcd.drawUTF8(xPos, yPos1, tempStr.c_str());
  lcd.drawUTF8(108, yPos1, "°C");
}

// Draw current pump state
void DrawInputPumpData() {
  if (pumpStateUI) {
    lcd.drawUTF8(104, yPos2, "ON");
  } else {
    lcd.drawUTF8(99, yPos2, "OFF");
  }
}

// Draw system temperature (PT100)
void DrawInputSystemTemperature() {
  lcd.setFont(u8g2_font_helvR12_tf);

  // Temperature
  float sysTemp  = GetTemperature();
  String tempStr = String(sysTemp, 1);

  uint8_t textWidth = lcd.getUTF8Width(tempStr.c_str());
  uint8_t xPos      = 97 - textWidth;

  lcd.drawUTF8(xPos, yPos4, tempStr.c_str());
  lcd.drawUTF8(100, yPos4, "°C");
}

// Draw selection indicator
void DrawInputSelectionGlyph() {
  lcd.setFont(u8g2_font_unifont_t_symbols);

  switch (menuSelectionInput) {
    case INPUTSTATE_MENU_TEMP:
      lcd.drawGlyph(3, yPos1 + 2, 0x25b6);
      lcd.drawGlyph(3, yPos2 + 2, 0x25b7);
      lcd.drawGlyph(3, yPos3 + 2, 0x25b7);
      break;
    case INPUTSTATE_MENU_PUMP:
      lcd.drawGlyph(3, yPos1 + 2, 0x25b7);
      lcd.drawGlyph(3, yPos2 + 2, 0x25b6);
      lcd.drawGlyph(3, yPos3 + 2, 0x25b7);
      break;
    case INPUTSTATE_MENU_START:
      lcd.drawGlyph(3, yPos1 + 2, 0x25b7);
      lcd.drawGlyph(3, yPos2 + 2, 0x25b7);
      lcd.drawGlyph(3, yPos3 + 2, 0x25b6);
      break;
    default:
      break;
  }
}

// Draw Start Confirmation Box
void DrawInputStartBox() {
  lcd.drawBox(boxXPos, boxYPos, boxWidth, boxHeight);
  lcd.setDrawColor(0);
  lcd.drawBox(boxXPos + 1, boxYPos + 1, boxWidth - 2, boxHeight - 2);
  lcd.setDrawColor(1);
  lcd.drawUTF8(boxXPos + 12, boxYPos + 13, "Start System?");
}

// Highlight selected text
void DrawInputTextOutline() {
  uint8_t textWidth, xPos;
  String tempStr;

  switch (menuSelectionInput) {
    case INPUTSTATE_TEMP_SELECT:
      tempStr   = String(uiTargetTempInput, 1);
      textWidth = lcd.getUTF8Width(tempStr.c_str());
      xPos      = 105 - textWidth;
      lcd.drawBox(xPos - 2, yPos1 - 9, textWidth + 18, 10);
      break;
    case INPUTSTATE_PUMP_SELECT:
      tempStr   = pumpStateUI ? "ON" : "OFF";
      textWidth = lcd.getUTF8Width(tempStr.c_str());
      xPos      = pumpStateUI ? 105 : 100;
      lcd.drawBox(xPos - 2, yPos2 - 9, textWidth + 2, 10);
      break;
    case INPUTSTATE_START_CONFIRM:
      lcd.drawBox(boxXPos + 6, boxYPos + boxHeight - 5 - 9, 40, 10);
      break;
    case INPUTSTATE_START_CANCEL:
      lcd.drawBox(boxXPos + boxWidth - 37, boxYPos + boxHeight - 5 - 9, 33, 10);
      break;
    default:
      break;
  }
}

// Draw Selection Popup
void DrawInputSelection() {
  switch (menuSelectionInput) {
    case INPUTSTATE_TEMP_SELECT:
      DrawInputTextOutline();
      lcd.setDrawColor(0);
      DrawInputTemperatureSetpoint();
      lcd.setDrawColor(1);
      break;
    case INPUTSTATE_PUMP_SELECT:
      DrawInputTextOutline();
      lcd.setDrawColor(0);
      DrawInputPumpData();
      lcd.setDrawColor(1);
      break;
    case INPUTSTATE_START_CONFIRM:
      DrawInputStartBox();
      DrawInputTextOutline();
      lcd.setDrawColor(0);
      lcd.drawUTF8(boxXPos + 7, boxYPos + boxHeight - 5, "Confirm");
      lcd.setDrawColor(1);
      lcd.drawUTF8(boxXPos + boxWidth - 36, boxYPos + boxHeight - 5, "Cancel");
      break;
    case INPUTSTATE_START_CANCEL:
      DrawInputStartBox();
      DrawInputTextOutline();
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
void DrawInput() {
  DrawInputDetails();
  DrawInputTemperatureSetpoint();
  DrawInputPumpData();
  DrawInputSystemTemperature();
  DrawInputSelectionGlyph();
  DrawInputSelection();
}
