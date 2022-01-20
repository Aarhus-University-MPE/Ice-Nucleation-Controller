
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
      Serial.println("OK");
    }

    // Open
    else if (CMD == CMD_HEAT)
    {
      digitalWrite(RELAY_PIN, HIGH);
      Serial.println("OK");
    }
  }
}
