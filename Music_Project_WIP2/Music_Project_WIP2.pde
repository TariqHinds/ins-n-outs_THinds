import processing.sound.*;
import processing.serial.*;
SoundFile kick; 
Serial myPort;
int button=0;
void setup(){
size(400, 400);
kick = new SoundFile(this, "Sounds/kick.wav");
String portName = Serial.list()[0];
myPort = new Serial(this, portName, 9600); 
myPort.bufferUntil('\n'); 
}

void serialEvent(Serial myPort){
if (myPort.available() > 0){
button = myPort.read();  
}
}
void draw(){
background(0);
if (mousePressed == true){
kick.play();
}
if (button > 0){//Code debug: I need to fix the statement to only click and then immediately turn off after one response. instead of playing the file a thousand times in one second. 
 kick.play(); 
println("bassdrum"); 
}
}
