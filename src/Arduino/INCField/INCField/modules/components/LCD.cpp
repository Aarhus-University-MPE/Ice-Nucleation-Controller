/*
  Ice Nucleation Controller (Field Version) LCD controller

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"
#include "U8glib.h"

U8GLIB_ST7920_128X64_1X u8g(52, 51, 41);

unsigned long lastMillisDraw = 0;

LCDSTATE LCDState = 0;

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

  // flip screen, if required
  // u8g.setRot180();

  // assign default color value
  if (u8g.getMode() == U8G_MODE_R3G3B2) {
    u8g.setColorIndex(255);  // white
  } else if (u8g.getMode() == U8G_MODE_GRAY2BIT) {
    u8g.setColorIndex(3);  // max intensity
  } else if (u8g.getMode() == U8G_MODE_BW) {
    u8g.setColorIndex(1);  // pixel on
  } else if (u8g.getMode() == U8G_MODE_HICOLOR) {
    u8g.setHiColorByRGB(255, 255, 255);
  }

  LCDSetState(LCDSTATE_SPLASH);
}

// Set LCD State
void LCDSetState(LCDSTATE _LCDState) {
  LCDState = _LCDState;
}

// Startup screen
void DrawSplash() {
  u8g.setFont(u8g_font_unifont);
  // u8g.setFont(u8g_font_osb21);
  u8g.drawStr(0, 22, "Hello World!");
}

void LCDDraw() {
  // Throttle LCD Draw cycles
  if (millis() - lastMillisDraw < LCD_DRAW_PERIOD) return;

  // Clear LCD
  LCDReset();

  // Redraw LCD screen
  switch (LCDState) {
    case LCDSTATE_SPLASH:
      DrawSplash();
      break;

    default:
      break;
  }
}
