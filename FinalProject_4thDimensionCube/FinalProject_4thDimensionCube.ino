

// constants won't change. They're used here to set pin numbers:
const int buttonPin = 2;
const int buttonPin2 = 4;
const int buttonPin3 = 3;// the number of the pushbutton pin
const int ledPin =  13;      // the number of the LED pin

// variables will change:
int buttonState = 0;         // variable for reading the pushbutton status
int buttonState2 = 0;
int buttonState3 = 0;
void setup() {
  // initialize the LED pin as an output:
  pinMode(ledPin, OUTPUT);
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT);
    pinMode(buttonPin2, INPUT);

  pinMode(buttonPin3, INPUT);
Serial.begin(9600); 
}

void loop() {
  // read the state of the pushbutton value:
  buttonState = digitalRead(buttonPin);
  buttonState2 = digitalRead(buttonPin2);
  buttonState3 = digitalRead(buttonPin3);

  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (buttonState == HIGH) {
    // turn LED on:
    digitalWrite(ledPin, HIGH);
    Serial.write(1); 
  } else if (buttonState2 == HIGH) {
    // turn LED on:
    Serial.write(2); 
    digitalWrite(ledPin, HIGH);
  } else if (buttonState3 == HIGH) {
    // turn LED on:
    Serial.println(buttonState3); 
    Serial.write(3); 
    digitalWrite(ledPin, HIGH);
  } else {
    digitalWrite(ledPin, LOW);
    Serial.write(0); 
    }
}
