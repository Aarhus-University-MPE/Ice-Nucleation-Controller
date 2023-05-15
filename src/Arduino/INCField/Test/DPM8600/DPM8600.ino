#include <DPM8600.h>

DPM8600 converter;

void setup() {
  Serial2.begin(9600);

  // Initating power converter
  converter.begin(Serial2);

  // Setting both Voltage and Current to 2V and 0.1A respectively
  converter.writeVC(2, 0.1);
}

void loop() {
}