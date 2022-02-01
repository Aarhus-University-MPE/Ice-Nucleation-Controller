
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
#define CMD_COOL      101               // Switch to Relays to Cooling Position (POS1) - Default
#define CMD_HEAT      102               // Switch to Relays to Heating Position (POS2)

#define RELAY_PIN     7

bool HEATING =        false;
long HEAT_STARTTIME = 0;
const long  TIMEOUT = 60000;              // Timeout period in ms

//--------------------------------------//
//                SETUP                 //
//--------------------------------------//

void setup() {
  pinMode(RELAY_PIN, OUTPUT);
  digitalWrite(RELAY_PIN, LOW);

  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect.
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

    // Close
    if (CMD == CMD_COOL)
    {
      digitalWrite(RELAY_PIN, LOW);
      HEATING = false;
      Serial.println("OK");
    }

    // Open
    else if (CMD == CMD_HEAT)
    {
      digitalWrite(RELAY_PIN, HIGH);
      HEATING = true;
      HEAT_STARTTIME = millis();
      Serial.println("OK");
    }
  }
  if(HEATING && millis() - HEAT_STARTTIME > TIMEOUT){
    digitalWrite(RELAY_PIN, LOW);
    HEATING = false;
    Serial.println("TIMEOUT");
  }
}
