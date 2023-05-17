#include "U8g2lib.h"

U8G2_ST7920_128X64_2_HW_SPI u8g2(U8G2_R0, 41);

void draw(void) {
  // graphic commands to redraw the complete screen should be placed here
  u8g2.setFont(u8g2_font_helvR08_tf);
  u8g2.drawUTF8(22, 22, "Temperature : -3.5 °C");
}

void setup(void) {
  u8g2.begin();
}

void loop(void) {
  // picture loop
  u8g2.firstPage();
  do {
    draw();
  } while (u8g2.nextPage());
}
