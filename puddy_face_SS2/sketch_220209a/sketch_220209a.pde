//I am gonna make a simple sketch mousePressed clicker drawing and an image
PImage burger; 
float g = 200;
int q = 100; 
void setup(){
  size(800,800);
  burger = loadImage("https://res.cloudinary.com/graham-media-group/image/upload/f_auto/q_auto/c_scale,w_792/v1/media/gmg/GE6XGX7QSFFPFDC6MZ244XWFBM.jpg?_a=ATABlAA0"); //Got this function from the example page 36
}

void draw(){
  background(255);
image (burger, 0, 0); 
if (mousePressed == true){
 for (int i = 0; i < 100; i++){
   
 }
}
}
