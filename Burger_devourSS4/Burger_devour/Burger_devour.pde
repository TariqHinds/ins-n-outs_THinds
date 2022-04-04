//I am gonna make a simple sketch mousePressed witha  burger and a bunch of circles
//I wanted to shake off any rust I had from the functions and I wanted to get familiar with making messes, so I wanted to try to make a clickable sketch that would leave the circles on the sketch to emulate the burger getting eaten
//I went with making a hazy for loop text blur that can change color. 
//Move your mouse to change to color of the text
PImage burger; 
float g = 200;
int q = 100; 
int m = mouseX; 
int n = mouseY;
int value = 0;
float lines [];
int NumLines = 500;

void setup(){
size(800,800);  
  burger = loadImage("https://res.cloudinary.com/graham-media-group/image/upload/f_auto/q_auto/c_scale,w_792/v1/media/gmg/GE6XGX7QSFFPFDC6MZ244XWFBM.jpg?_a=ATABlAA0"); //Got this function from the example page 36
 
}
//Previous idea was to attempt to create a random walker image generator code, but I couldn't find any code for the java api (P5js for all examples) and I have been looking for ways to make it in java but after 4 hours of looking at the reference, I am done. Imma do something simpler. 
void draw(){
  background(2);
image (burger, 0, 0); 

  
for(int i = 0; i < NumLines; i++){
  textSize(70); 

fill(mouseX, 200, mouseY);
  text("Let there be meat", width/2, i);
   textAlign(CENTER);
  
}

 /*if (mousePressed == true){
 for (int i = 0; i < 150; i++){
   fill(q, g, random(255)); 
   circle(random(800), random(800), 80); 
 }  else if (keyPressed = true){
     rect(mouseX,mouseY, 79, 79 ); 
 }
 } else if (keyPressed == true) {
   strokeWeight(5);
    line(g++, q++, 360, 0);
  } else {
   text("I am hungry!!", 90, 90 );
   textAlign(200); 
   textSize(100); 
  
    
  }
 }*/
   /*void mousePressed(){
     if (value == 0){
       value = 255;
     fill(q, g, random(value)); 
   circle(random(800), random(800), 80); 
   strokeWeight(5);
   text("I am hungry!!", 90, 90 );
   textAlign(200); 
   textSize(100); 
   
     } else { 
       value = 0;
     } */
  
   } 
  
