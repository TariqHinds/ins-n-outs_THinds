
/*First part of my project is to create a button value
and send it to processing*/
#define buttonPin 2 
int LED = 13; 
uint8_t btn_prev; 
uint8_t btn_prev2; 

void setup() {
  // put your setup code here, to run once:
pinMode(buttonPin, INPUT_PULLUP); 
pinMode(LED, OUTPUT); 
btn_prev = digitalRead(buttonPin); 

Serial.begin(9600); 
/*
 So to explain this setup. I am basically making a button previous state hold 8bytes of data that can be read and I connected as a digitalRead to the button pin to get that signal
 */
}

void loop() {
  uint8_t button = digitalRead(buttonPin); 
 if (button == LOW && btn_prev == HIGH){
  Serial.println("Button press"); 
   
  digitalWrite(LED, HIGH);
  delay(20000);
  digitalWrite(LED, LOW); 
 } 
  
 btn_prev = digitalRead(buttonPin); 

 
  
}
