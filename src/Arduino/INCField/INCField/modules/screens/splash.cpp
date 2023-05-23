/*
  Ice Nucleation Controller (Field Version) LCD Screens

  Mads Rosenhøj Jeppesen
  Aarhus University
  2023
*/

#pragma once

#include "../setup/modules.h"

// Startup screen
void DrawSplash() {
  lcd.setFont(u8g2_font_helvR08_tf);
  lcd.drawStr(5, 32, "Ice Nucleation Controller");
  lcd.drawStr(15, 42, "version ");
  lcd.drawStr(70, 42, SystemVersion);
}
