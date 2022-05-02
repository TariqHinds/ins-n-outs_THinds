//Receives data over Serial port from Processing to control 1 LED fade
//Hook up LED to PWM pin 10.


byte val; // stores data received from serial port
const int LED = 8;
const int LED2 = 9;
const int LED3 = 10; // variable for which pin
const int LED4 = 11;
const int LED5 = 12;
const int LED6 = 13;
const int SENSOR = A0; //sensor hooked up to analog pin A0
byte v; 

void setup() {
  pinMode (SENSOR, INPUT);
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);// set pin as output
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }
  v = Serial.read(); 
   v = analogRead(SENSOR); 
   v = v/4; 
   analogWrite(LED6, val);
   delay(200); 
   analogWrite(LED5, val);
   delay(200);
   analogWrite(LED4, val);
   delay(200);
  analogWrite(LED3, val);
  delay(200);
  analogWrite(LED2, val);
  delay(200);
  analogWrite(LED, val);

  delay(10); // Wait 10 milliseconds

   
}
