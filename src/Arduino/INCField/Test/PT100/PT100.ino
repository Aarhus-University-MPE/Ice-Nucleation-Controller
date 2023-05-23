#include <Adafruit_MAX31865.h>

// use hardware SPI, just pass in the CS pin
Adafruit_MAX31865 thermo = Adafruit_MAX31865(42);

// The value of the Rref resistor. Use 430.0 for PT100 and 4300.0 for PT1000
#define RREF     430.0
// The 'nominal' 0-degrees-C resistance of the sensor
// 100.0 for PT100, 1000.0 for PT1000
#define RNOMINAL 100.0

// 4th order correction
const float a4 = 0.0000006f;
const float a3 = 0.000001f;
const float a2 = -0.00008f;
const float a1 = -0.0238f;
const float a0 = 0.7086f;

float sysTemp = 0;

float TemperatureCorrection(float temp) {
  return a4 * pow(temp, 4) + a3 * pow(temp, 3) + a2 * pow(temp, 2) + a1 * temp + a0;
}

// Read and update Temperature values
void UpdateTemperature() {
  uint16_t rtd   = thermo.readRTD();
  float tempRead = thermo.temperature(RNOMINAL, RREF);

  float estimateTemp   = tempRead - TemperatureCorrection(tempRead);
  float tempCorrection = TemperatureCorrection(estimateTemp);

  sysTemp = tempRead - tempCorrection;
}

void setup() {
  Serial.begin(115200);
  Serial.println("Adafruit MAX31865 PT100 Sensor Test!");

  thermo.begin(MAX31865_4WIRE);  // set to 2WIRE or 4WIRE as necessary
}

void loop() {
  float tempTotal = 0;

  for (uint8_t i = 0; i < 5; i++) {
    UpdateTemperature();
    tempTotal += sysTemp;
    delay(2000);
  }

  tempTotal /= 5;

  Serial.print("Temperature = ");
  Serial.println(tempTotal, 3);
  Serial.println();
}