const int C = 13;
const int D = 12;
const int E = 11;
const int F = 10;
const int G = 9;
const int A = 8;
int led[] = {A,G,F,E,D,C}; 
const int buttonPin = 2; 
int buttonPress = 0; 
void setup() {
  // put your setup code here, to run once:
pinMode(C, OUTPUT);
pinMode(D, OUTPUT);
pinMode(E, OUTPUT);
pinMode(F, OUTPUT);
pinMode(G, OUTPUT);
pinMode(A, OUTPUT);
pinMode(buttonPin, INPUT); 

}

void loop() {
int  timeShut = 10; 
  buttonPress = digitalRead(buttonPin); 
  delay (10);
 if (buttonPress == HIGH) {
  Pattern();
  if (buttonPress == LOW){
    delay(25); 
  digitalWrite(C, LOW);  
  digitalWrite(D, LOW);  
  digitalWrite(E, LOW);  
  digitalWrite(F, LOW);  
  digitalWrite(A, LOW);  
  digitalWrite(G, LOW); 
  }
  
   
} 
   
  
  
 }

 
 



void Pattern(){
digitalWrite(G, HIGH);
delay(300);
digitalWrite(G, LOW);
delay(250);
digitalWrite(F, HIGH);
delay(250);
digitalWrite(F, LOW); 
delay(250);
digitalWrite(G, HIGH);
delay(250);
digitalWrite(G, LOW);
delay(250);
digitalWrite(A, HIGH);
delay(250);
digitalWrite(A, LOW);
delay(250);
digitalWrite(G, HIGH);
delay(250);
digitalWrite(G, LOW);
delay(250);
digitalWrite(F, HIGH);
delay(250);
digitalWrite(F, LOW);
delay(250);
  
  digitalWrite(C, HIGH); 
digitalWrite(E, HIGH);
delay(5000); 
digitalWrite(C, LOW);
digitalWrite(E, LOW);
delay(100); 
 
digitalWrite(D, HIGH);
delay(100);
digitalWrite(E, HIGH); 
 
delay(200);
digitalWrite(D, LOW);
digitalWrite(E, LOW);
}

/*else if (buttonPress == LOW){
  for (int i = 7; i >= 0; i--){
  digitalWrite(led[i], LOW); 
  delay(timeShut); */
 
