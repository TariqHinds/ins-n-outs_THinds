//Imma try drawing a house by taking knowledge from LearningProcessing page 5 - 9 and 19 - 23
//This house is now a Dorian house. When you click it, it is supposed to give off a color change and the pattern comes from each click of the mouse
float w = 20;
float a = 30;
float s = 50;
float d = 140;
int e = 0; 
int q = 255;
int r = 150;
int g = 45;
int b = 0;
 int r2 = 255;
int g2 = 255;
int b2 = 255;
 
void setup(){
  size(1080, 720);
  
  
}

void mousePressed(){
  if (q == 0){
    for (int i = 0; i <=130; i++){
      r = i++;
      g = i;
      b = i+50; 
      q = 20 + i; 
      
      fill(r,g,b); 
      ellipse(450, 435, 90, 100); 
ellipse(650, 435, 90, 100);
    } 
      
    
    
  } else if (q == 0 || q == 254){
    textSize(50); 
    text("Welcome to the Dorian house!! We are weird and our peers are dears!!", 50, 50); 
  } else {
    r2 = 124;
    b2 = 23; 
    g2 = 162; 
    
   q = 0;  
  }
}

void draw(){
background (q);
strokeWeight(7); 
fill(90, 145, 87);
triangle(400, 300, 700, 300, 550, 80 ); 
noStroke();
noFill(); 
fill(r, g, 69); 
rect(400, 300, 300, 350);
noFill();
fill(r +10, g + 95, b + 55);
strokeWeight(4);
stroke(140, 160, 90); 


rect(500, 400, 100, 240);
noFill();
fill(r2, g2, b2); 
ellipse(450, 435, 90, 100); 
ellipse(650, 435, 90, 100);
noFill();
fill(q, 150, q*23); 
circle(580, 510, 40); 


}

/* 
//Imma try drawing a house by taking knowledge from LearningProcessing page 5 - 9 and 19 - 23
//This house is now a Dorian house. When you click it, it is supposed to give off a color change and the pattern comes from each click of the mouse
float w = 20;
float a = 30;
float s = 50;
float d = 140;
int e = 0; 
int q = 255;
int r = 150;
int g = 45;
int b = 0;
 int r2 = 255;
int g2 = 255;
int b2 = 255;
 
void setup(){
  size(1080, 720);
  
  
}

void mousePressed(){
  if (q == 0){
    for (int i = 0; i <=130; i++){
      r = i++;
      g = i;
      b = i+50; 
      q = 20 + i; 
      
      fill(r,g,b); 
      ellipse(450, 435, 90, 100); 
ellipse(650, 435, 90, 100);
    } 
      
    
    
  } else if (q == 0 || q == 254){
    textSize(50); 
    text("Welcome to the Dorian house!! We are weird and our peers are dears!!", 50, 50); 
  } else {
    r2 = 124;
    b2 = 23; 
    g2 = 162; 
    
   q = 0;  
  }
}

void draw(){
background (q);
strokeWeight(7); 
fill(90, 145, 87);
triangle(400, 300, 700, 300, 550, 80 ); 
noStroke();
noFill(); 
fill(r, g, 69); 
rect(400, 300, 300, 350);
noFill();
fill(r +10, g + 95, b + 55);
strokeWeight(4);
stroke(140, 160, 90); 


rect(500, 400, 100, 240);
noFill();
fill(r2, g2, b2); 
ellipse(450, 435, 90, 100); 
ellipse(650, 435, 90, 100);
noFill();
fill(q, 150, q*23); 
circle(580, 510, 40); 


}



*/
