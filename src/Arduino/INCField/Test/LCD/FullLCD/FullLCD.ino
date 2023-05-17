#include <Adafruit_MAX31865.h>

#include "EncoderStepCounter.h"
#include "OneButton.h"
#include "U8g2lib.h"

// use hardware SPI, just pass in the CS pin
Adafruit_MAX31865 thermo = Adafruit_MAX31865(42);

// The value of the Rref resistor. Use 430.0 for PT100 and 4300.0 for PT1000
#define RREF         430.0
// The 'nominal' 0-degrees-C resistance of the sensor
// 100.0 for PT100, 1000.0 for PT1000
#define RNOMINAL     100.0

#define ENCODER_PIN1 2
#define ENCODER_INT1 digitalPinToInterrupt(ENCODER_PIN1)
#define ENCODER_PIN2 3
#define ENCODER_INT2 digitalPinToInterrupt(ENCODER_PIN2)

float tempUI                 = 0;
float temp                   = 0;
bool selectActive            = false;
int8_t menuSelection         = 0;
unsigned long lastMillisDraw = 0;

const uint8_t yPos0 = 10;
const uint8_t yPos1 = 25;
const uint8_t yPos2 = 37;
const uint8_t yPos3 = 61;
const uint8_t yPos4 = 61;

bool pumpStateUI = false;
bool pumpState   = false;

bool startSelectUI = true;
bool startSelect   = true;
bool systemActive  = false;

#define PIN_INPUT     19
#define PO_BUZZER_LCD 4

enum MENU {
  MENU_TEMP  = 0,
  MENU_PUMP  = 1,
  MENU_START = 2,
};

#define MENU_MAX          2

#define PO_CS_LCD         41
#define LCD_BLINKDURATION 750

U8G2_ST7920_128X64_2_HW_SPI u8g2(U8G2_R0, PO_CS_LCD);

unsigned long lastBlink = 0;
bool flashActive        = false;

// Create instance for one full step encoder
EncoderStepCounter encoder(ENCODER_PIN1, ENCODER_PIN2);

// Setup a new OneButton on pin PIN_INPUT
// The 2. parameter activeLOW is true, because external wiring sets the button to LOW when pressed.
OneButton button(PIN_INPUT, true);

// This function is called from the interrupt when the signal on the PIN_INPUT has changed.
// do not use Serial in here.
void checkTicks() {
  // include all buttons here to be checked
  button.tick();  // just call tick() to check the state.
}

// Call tick on every change interrupt
void interrupt() {
  encoder.tick();
}

void SaveValues() {
  if (!selectActive) return;
  switch (menuSelection) {
    case MENU_TEMP:
      temp = tempUI;
      break;
    case MENU_PUMP:
      pumpState = pumpStateUI;
      break;
    case MENU_START:
      startSelect = startSelectUI;
      if (startSelect) systemActive = !systemActive;
      break;
    default:
      break;
  }
}

// this function will be called when the button was pressed 1 time only.
void singleClick() {
  SaveValues();
  selectActive = !selectActive;
  BuzzerBeep();
  lastBlink = millis() - LCD_BLINKDURATION;
}

// this function will be called when the button was held down for 1 second or more.
void pressStart() {
  BuzzerLong();
}

void InitializeButton() {
  // when not registering to the interrupt the sketch also works when the tick is called frequently.
  attachInterrupt(digitalPinToInterrupt(PIN_INPUT), checkTicks, CHANGE);

  // link the xxxclick functions to be called on xxxclick event.
  button.attachClick(singleClick);

  button.setPressMs(1000);  // that is the time when LongPressStart is called
  button.attachLongPressStart(pressStart);
}

void InitializeEncoder() {
  // Initialize encoder
  encoder.begin();

  // Initialize interrupts
  attachInterrupt(ENCODER_INT1, interrupt, CHANGE);
  attachInterrupt(ENCODER_INT2, interrupt, CHANGE);
}

// Initialize LCD
void InitializeLCD() {
  u8g2.begin();
}

void DrawTemperatureData() {
  // Temperature
  String tempStr    = String(tempUI, 1);
  uint8_t textWidth = u8g2.getUTF8Width(tempStr.c_str());
  uint8_t xPos      = 105 - textWidth;

  u8g2.drawUTF8(xPos, yPos1, tempStr.c_str());
  u8g2.drawUTF8(108, yPos1, "°C");
}

float lastSysTemp            = 0.0f;
unsigned long lastMillisTemp = 0;

float GetTemperature() {
  return lastSysTemp;
}

void DrawOutput() {
  uint8_t output    = 33;
  String tempStr    = String(output);
  uint8_t textWidth = u8g2.getUTF8Width(tempStr.c_str());
  uint8_t xPos      = 105 - textWidth;
  u8g2.drawUTF8(xPos, yPos2, tempStr.c_str());
  u8g2.drawUTF8(108, yPos2, "\%");
}

void DrawSystemTemperature() {
  if (systemActive) {
    u8g2.setFont(u8g2_font_helvR18_tf);
  } else {
    u8g2.setFont(u8g2_font_helvR12_tf);
  }

  // Temperature
  float sysTemp     = GetTemperature();
  String tempStr    = String(sysTemp, 1);
  uint8_t textWidth = u8g2.getUTF8Width(tempStr.c_str());
  uint8_t xPos      = 97 - textWidth;
  u8g2.drawUTF8(xPos, yPos4, tempStr.c_str());
  u8g2.drawUTF8(100, yPos4, "°C");
}

void DrawPumpData() {
  if (pumpStateUI) {
    u8g2.drawUTF8(104, yPos2, "ON");
  } else {
    u8g2.drawUTF8(99, yPos2, "OFF");
  }
}

void DrawData() {
  DrawTemperatureData();

  if (!systemActive) {
    DrawPumpData();
  } else {
    DrawOutput();
  }
}

const uint8_t boxWidth  = 90;
const uint8_t boxHeight = 46;

const uint8_t boxXPos = (128 - boxWidth) / 2;
const uint8_t boxYPos = (64 - boxHeight) / 2;

void DrawSelect() {
  if (millis() - lastBlink > LCD_BLINKDURATION) {
    lastBlink   = millis();
    flashActive = !flashActive;
  }

  uint8_t textWidth, xPos;
  String tempStr;

  // if (!flashActive) {
  //   DrawData();
  //   return;
  // }

  switch (menuSelection) {
    case MENU_TEMP:
      tempStr   = String(tempUI, 1);
      textWidth = u8g2.getUTF8Width(tempStr.c_str());
      xPos      = 105 - textWidth;
      u8g2.drawBox(xPos - 2, yPos1 - 9, textWidth + 18, 10);
      u8g2.setDrawColor(0);
      DrawTemperatureData();
      u8g2.setDrawColor(1);
      if (!systemActive) DrawPumpData();
      if (systemActive) DrawOutput();
      break;
    case MENU_PUMP:
      tempStr   = pumpStateUI ? "ON" : "OFF";
      textWidth = u8g2.getUTF8Width(tempStr.c_str());
      xPos      = pumpStateUI ? 105 : 100;
      u8g2.drawBox(xPos - 2, yPos2 - 9, textWidth + 2, 10);
      u8g2.setDrawColor(0);
      DrawPumpData();
      u8g2.setDrawColor(1);
      DrawTemperatureData();
      break;
    case MENU_START:
      DrawData();
      u8g2.drawBox(boxXPos, boxYPos, boxWidth, boxHeight);
      u8g2.setDrawColor(0);
      u8g2.drawBox(boxXPos + 1, boxYPos + 1, boxWidth - 2, boxHeight - 2);
      u8g2.setDrawColor(1);
      if (systemActive) {
        u8g2.drawUTF8(boxXPos + 14, boxYPos + 13, "Stop System?");
      } else {
        u8g2.drawUTF8(boxXPos + 12, boxYPos + 13, "Start System?");
      }

      if (startSelectUI) {
        u8g2.drawBox(boxXPos + 6, boxYPos + boxHeight - 5 - 9, 40, 10);
        u8g2.setDrawColor(0);
        u8g2.drawUTF8(boxXPos + 7, boxYPos + boxHeight - 5, "Confirm");
        u8g2.setDrawColor(1);
        u8g2.drawUTF8(boxXPos + boxWidth - 36, boxYPos + boxHeight - 5, "Cancel");
      } else {
        u8g2.drawBox(boxXPos + boxWidth - 37, boxYPos + boxHeight - 5 - 9, 33, 10);
        u8g2.setDrawColor(0);
        u8g2.drawUTF8(boxXPos + boxWidth - 36, boxYPos + boxHeight - 5, "Cancel");
        u8g2.setDrawColor(1);
        u8g2.drawUTF8(boxXPos + 7, boxYPos + boxHeight - 5, "Confirm");
      }

      break;
    default:
      break;
  }
}

void DrawSelectionGlyph() {
  u8g2.setFont(u8g2_font_unifont_t_symbols);

  switch (menuSelection) {
    case MENU_TEMP:
      u8g2.drawGlyph(3, yPos1 + 2, 0x25b6);
      if (!systemActive) u8g2.drawGlyph(3, yPos2 + 2, 0x25b7);
      u8g2.drawGlyph(3, yPos3 + 2, 0x25b7);
      break;
    case MENU_PUMP:
      u8g2.drawGlyph(3, yPos1 + 2, 0x25b7);
      if (!systemActive) u8g2.drawGlyph(3, yPos2 + 2, 0x25b6);
      u8g2.drawGlyph(3, yPos3 + 2, 0x25b7);
      break;
    case MENU_START:
      u8g2.drawGlyph(3, yPos1 + 2, 0x25b7);
      if (!systemActive) u8g2.drawGlyph(3, yPos2 + 2, 0x25b7);
      u8g2.drawGlyph(3, yPos3 + 2, 0x25b6);
      break;
    default:
      break;
  }
}

void DrawConstants() {
  u8g2.setFont(u8g2_font_helvR08_tf);

  // Header
  if (!systemActive) {
    u8g2.drawUTF8(5, yPos0, "Setup");
  } else {
    u8g2.drawUTF8(5, yPos0, "System Active");
  }
  u8g2.drawLine(2, yPos0 + 3, 125, yPos0 + 3);

  // Target Temperature
  u8g2.drawUTF8(13, yPos1, "Target");

  // Pump
  if (!systemActive) u8g2.drawUTF8(13, yPos2, "Pump");

  // Output
  if (systemActive) u8g2.drawUTF8(13, yPos2, "Output");

  // Start
  if (systemActive) {
    u8g2.drawUTF8(13, yPos3, "Stop");
  } else {
    u8g2.drawUTF8(13, yPos3, "Start");
  }

  // System Temperature
  DrawSystemTemperature();

  // Standard font
  u8g2.setFont(u8g2_font_helvR08_tf);
}

void draw(void) {
  // graphic commands to redraw the complete screen should be placed here
  u8g2.setDrawColor(1);
  DrawSelectionGlyph();

  DrawConstants();
  if (!selectActive) {
    DrawData();
  } else {
    DrawSelect();
  }
}

enum TONE {
  TONE_PING = 2093
};

enum DURATION {
  DURATION_MEDIUM = 200,
  DURATION_PING   = 100,
  DURATION_DELAY  = 50
};

// Initialize Buzzer
void InitializeBuzzer() {
  pinMode(PO_BUZZER_LCD, OUTPUT);
  Buzzer2Beep();
}

// Play Buzzer tone
void BuzzerTone(uint16_t frequency) {
  tone(PO_BUZZER_LCD, frequency);
}

// Turn off Buzzer
void BuzzerNoTone() {
  noTone(PO_BUZZER_LCD);
}

// Single Tone (Short)
void BuzzerBeep() {
  BuzzerTone(TONE_PING);
  delay(DURATION_PING);
  BuzzerNoTone();
}

// Single Tone (Long)
void BuzzerLong() {
  BuzzerTone(TONE_PING);
  delay(DURATION_MEDIUM);
  BuzzerNoTone();
}

// Two short beeps
void Buzzer2Beep() {
  BuzzerBeep();
  delay(DURATION_DELAY);
  BuzzerBeep();
}

void InitializePT100() {
  thermo.begin(MAX31865_4WIRE);  // set to 2WIRE or 4WIRE as necessary
}

void updateValues() {
  if (millis() - lastMillisTemp > 1000) {
    lastMillisTemp = millis();
    digitalWrite(PO_CS_LCD, true);
    lastSysTemp = thermo.temperature(RNOMINAL, RREF);
    digitalWrite(PO_CS_LCD, false);
  }
}

// setup code here, to run once:
void setup() {
  Serial.begin(115200);
  InitializeButton();
  InitializeEncoder();
  InitializePT100();
  InitializeLCD();
  InitializeBuzzer();

}  // setup

// main code here, to run repeatedly:
void loop() {
  // keep watching the push button, even when no interrupt happens:
  button.tick();

  signed char pos = encoder.getPosition();
  if (pos != 0) {
    if (selectActive) {
      switch (menuSelection) {
        case MENU_TEMP:
          tempUI += (float)pos * 0.5f;
          break;
        case MENU_PUMP:
          pumpStateUI = !pumpStateUI;
          break;
        case MENU_START:
          startSelectUI = !startSelectUI;
          break;
        default:
          break;
      }
    } else {
      menuSelection += pos > 0 ? 1 : -1;
      menuSelection = constrain(menuSelection, 0, MENU_MAX);
      if (systemActive && menuSelection == MENU_PUMP) menuSelection += pos > 0 ? 1 : -1;
      menuSelection = constrain(menuSelection, 0, MENU_MAX);
    }
    encoder.reset();
  }

  updateValues();

  // LCD Process
  u8g2.firstPage();
  do {
    draw();
  } while (u8g2.nextPage());
}
