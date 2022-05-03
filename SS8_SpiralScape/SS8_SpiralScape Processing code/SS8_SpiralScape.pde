

import processing.serial.*;
Serial myPort; 
int val=0; 
float rStroke = random(0, 255);
int bg = 0; 
 
void setup() {
  size(1080, 720);
  

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
   background(bg); 
  float wavePat = sin(radians(frameCount)); 
float p = wavePat*map(val,0,height,2500,0);
  if ( myPort.available() > 0) { 
    val = myPort.read();
  } else if (val <= 20){
    background(50);
  } else if (val >= 235){
   background(140);
   fill(rStroke); 
   ellipse(width/2, height/2, 250, 250); 
  }
 
 

  translate(width/2, height/2);
  
  fill (0);
 for (int i = 0; i < 400; i++){
   rotate(val); 
    line(850,i-p,-850,i++);
     
    stroke(rStroke);
    line(850,i-p,-850,i++);
        
    stroke(rStroke); 
    line(850,i-p,-850,i++);
   
 } 
}
  
  
