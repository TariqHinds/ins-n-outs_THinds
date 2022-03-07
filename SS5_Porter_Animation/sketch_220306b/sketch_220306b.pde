/*My concept is going to be two photo transition between one image to another
thtthe challenge is two user defined functions, three loops, 2 external images,
one conditional
*/ 
PImage Worlds;//My image for the starting image of the sketch
PImage Nurture;//The second image
void NurturePreload(){//This function is solely to call the images I have downloaded
 imageMode(CENTER); 
 Nurture = loadImage("Nurture2.jpg");
  
   
}
void WorldsPreload(){//This creates the preload of the image so I don't have to type in all of those lines repeatedly
 background(255);
  imageMode(CENTER);
  Worlds = loadImage("Hands.jpg"); 
}
void setup(){
  size(700,700);
  WorldsPreload();
  NurturePreload();
  image(Worlds, height/2, width/2, 700, 700);  
  textSize(29);
  textAlign(CENTER);
 text("The guy who made this masterpiece", 300, 620);
}

void draw (){
   

 
}



void mousePressed (){
  int j = 0; 
  for (int y = 100; y<=400; y+=100){
   for  (int x = 100; x<=400; x+=100){
     image(Nurture, x, y); 
     for (int i = 300; i <500; i+=20){
        
       fill(random(j,mouseX), random(67, mouseX), random(30, mouseX));//This is changing the text color per click and depending on the mouse position. 
       text("ALSO MADE THIS LAST YEAR!!", i, i );
       if (keyPressed == true){
         
         j = j + 10; 
       }
     }
   }
  }
  //Chickem
}
