void setup(){
size(800, 800);
}

void draw (){
  background(255);
  for (int i = 0; i <= 800; i = i + 25) { //FOR LOOP that is to update a set number of circles
    ellipse(i, 20, 40, 40);
    ellipse(i, 780, 40, 40); 
    ellipse(20, i, 40, 40); 
    ellipse(780, i, 40, 40);
  }
  for (int i = 700; i > 0; i -= 50){
   ellipse(width/2, height/2 , i, i);  
  }
  
}
