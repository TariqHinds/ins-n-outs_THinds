/*First part of my project is to create a button value
and send it to processing*/
int buttonPin=2;
int button = LOW; 
void setup() {
  // put your setup code here, to run once:
pinMode(buttonPin, INPUT); 
Serial.begin(9600); 
}

void loop() {
  // put your main code here, to run repeatedly:
  button = digitalRead(buttonPin); 
if (button == HIGH){
  Serial.println("Button press"); 
 delay(10); 
 button = LOW ;  
  }
}
