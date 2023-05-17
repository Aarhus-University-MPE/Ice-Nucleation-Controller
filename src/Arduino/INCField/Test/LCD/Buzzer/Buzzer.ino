#define PO_BUZZER_LCD 4

void setup() {
  BuzzerInit();
}

void loop() {
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
void BuzzerInit() {
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
