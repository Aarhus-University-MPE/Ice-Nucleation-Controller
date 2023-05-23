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
  lcd.drawStr(22, 22, "Ice Nucleation Controller");
  lcd.drawStr(32, 32, "version ");
  lcd.drawStr(70, 32, SystemVersion);
}
