
/*
    Relay Control for INC
    https://github.com/Aarhus-University-MPE/Ice-Nucleation-Controller

    By
    Mads Rosenhoej Jeppesen - Aarhus 2019
    mrj@mpe.au.dk
*/

//--------------------------------------//
//              Initialize              //
//--------------------------------------//

// Request ID's
#define CMD_COOL  101  // Switch to Relays to Cooling Position (POS1) - Default
#define CMD_HEAT  102  // Switch to Relays to Heating Position (POS2)
#define CMD_OFF   103  // Switch to Relays to No Output Position (POS3)

#define RELAY_PIN_HEAT 7
#define RELAY_PIN_COOL 4

bool HEATING             = false;
long HEAT_STARTTIME      = 0;
const long TIMEOUT       = 60000;  // Timeout period in ms
const long TIMEOUT_DELAY = 15000;  // Timeout period in ms

unsigned long lastTimeoutSent = 0;

//--------------------------------------//
//                SETUP                 //
//--------------------------------------//

void setup() {
  digitalWrite(RELAY_PIN_COOL, LOW);
  digitalWrite(RELAY_PIN_HEAT, LOW);
  pinMode(RELAY_PIN_COOL, OUTPUT);
  pinMode(RELAY_PIN_HEAT, OUTPUT);

  Serial.begin(9600);
  while (!Serial) {
    ;  // wait for serial port to connect.
  }
}

//--------------------------------------//
//                MAIN                  //
//--------------------------------------//

void loop() {
  //------------------Commands------------------//
  //--------------------------------------------//

  if (Serial.available()) {
    int CMD = Serial.parseInt();

    // Cooling
    if (CMD == CMD_COOL) {
      digitalWrite(RELAY_PIN_HEAT, LOW);
      delay(10);
      digitalWrite(RELAY_PIN_COOL, HIGH);
      HEATING = false;
      Serial.println("OK");
    }

    // Heating
    else if (CMD == CMD_HEAT) {
      digitalWrite(RELAY_PIN_COOL, LOW);
      delay(10);
      digitalWrite(RELAY_PIN_HEAT, HIGH);
      HEATING        = true;
      HEAT_STARTTIME = millis();
      Serial.println("OK");
    }

    // No OutputHeating
    else if (CMD == CMD_OFF) {
      digitalWrite(RELAY_PIN_COOL, LOW);
      digitalWrite(RELAY_PIN_HEAT, LOW);
      HEATING        = false;
      Serial.println("OK");
    }
  }

  // Send timeout message
  if (HEATING && millis() - HEAT_STARTTIME > TIMEOUT) {
    if ( millis() - lastTimeoutSent > 2000) {
      lastTimeoutSent = millis();
      Serial.println("TIMEOUT");
    }
  }

  // Timeout
  if (HEATING && millis() - HEAT_STARTTIME > TIMEOUT + TIMEOUT_DELAY) {
    digitalWrite(RELAY_PIN_HEAT, LOW);
    digitalWrite(RELAY_PIN_COOL, LOW);
    HEATING = false;
  }
}
