float Ray; 
int woe;
int keef; 
void setup() {
size(1080, 720); 
Ray = 300.5;
woe = 100;
keef = 2 ; 
}

void draw(){
  println(frameCount); 
  background(frameCount, 80, keef); 
  fill(255, mouseX, mouseY);
  ellipse(275, 300, 600, 600); //The big kirby face
   fill(21, 190, 80);
   stroke(200);
   rect(Ray, 300, 100, 100);
   fill(21,50, 120);
   triangle(200,400, 400, 550, 500, 425);
   
  ellipse(Ray, Ray, woe, Ray);
   ellipse(Ray + 150, Ray, woe, Ray);
Ray = Ray +1 ; 
keef = keef -10; 

   
}
