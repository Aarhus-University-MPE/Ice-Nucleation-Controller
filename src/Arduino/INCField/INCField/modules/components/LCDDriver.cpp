/*
  Ice Nucleation Controller (Field Version) LCD controller

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"

U8G2_ST7920_128X64_2_HW_SPI lcd(U8G2_R0, PO_CS_LCD);

unsigned long lastMillisDraw = 0;

const uint8_t yPos0 = 10;
const uint8_t yPos1 = 25;
const uint8_t yPos2 = 37;
const uint8_t yPos3 = 61;
const uint8_t yPos4 = 61;

const uint8_t boxWidth  = 90;
const uint8_t boxHeight = 46;

const uint8_t boxXPos = (128 - boxWidth) / 2;
const uint8_t boxYPos = (64 - boxHeight) / 2;

// Wipe LCD
void LCDReset() {
  digitalWrite(PO_RST_LCD, true);
  delay(25);
  digitalWrite(PO_RST_LCD, false);
}

// Initialize LCD screen
void LCDInitialize() {
  // Wipe LCD screen
  LCDReset();

  // Start screen
  lcd.begin();

    LCDDraw();
}

// Redraw LCD screen
void DrawPage() {
  switch (SystemState()) {
    case SYSTEMSTATE_SPLASH:
      DrawSplash();
      break;
    case SYSTEMSTATE_INPUT:
      DrawInput();
      break;
    case SYSTEMSTATE_ACTIVE:
      DrawActive();
      break;
    default:
      break;
  }
}

void LCDDraw() {
  // Throttle LCD Draw cycles
  if (millis() - lastMillisDraw < LCD_DRAW_PERIOD) return;

  // Clear LCD
  LCDReset();

  // LCD page process
  lcd.firstPage();
  do {
    DrawPage();
  } while (lcd.nextPage());
}
