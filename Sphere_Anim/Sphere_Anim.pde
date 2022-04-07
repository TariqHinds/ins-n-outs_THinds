import peasy.*; //I got this from looking at the open processing website and asking questions.

PeasyCam cam; 
/*I am going to attempt a midterm using some 3D primitives and try to make a animation 
with spherical geometry. I want to add a timed event in some way with a couple of
complimentary 2d shapes with it in the background.*/
void setup(){
  size(600, 600, P3D); 
<<<<<<< HEAD
  cam = new PeasyCam(this, 20); 
  sphere = new PVector[total][total]; 
=======
>>>>>>> parent of 22b87e6 (My final work. I think I failed the main challenge I set myself)
}

void draw(){
  background(0);
  fill(255);
 lights();  //Lines 11 through 13 came from the processing reference and chap 14 
 //Same thing for P3D so it can render
<<<<<<< HEAD
  
  
=======
  translate(width/2, height/2); 
   
>>>>>>> parent of 22b87e6 (My final work. I think I failed the main challenge I set myself)
 float r = 220; 
 int total = 100; //A integar we are going to need and reuse. 
 //Since this sphere has some kind of triangle and I gotta animate it, I think I need to use sin and cos
 for(int i = 0; i < total; i++){//These nested loops are for creating the dimensions
 //of the sphere but using the points instead of calling for a sphere.
   float longe = map(i, 0, total, -PI, PI); 
   for(int j = 0; j< total; j++){
     float latey = map(j, 0, total, -HALF_PI, HALF_PI);
     //Lon and Lat is short for longetude and latitude
      //r is for radius and we are building up the
     //dimsions of the sphere in a 3D sense. I worked in Unity to know the 3 diminsions
     //much to my ire. I had to look up some geometry for the different dimensions on wikipedia
     float x = r * sin(longe) * cos(latey);
     float y = r * sin(longe) * sin(latey); 
     float z = r *  cos(longe); 
     float angleMotion = map(mouseX, 0, width, 0, TWO_PI); //More of this from chap 14.
<<<<<<< HEAD
     ; 
   stroke(255);
=======
     rotate(angleMotion); 
     stroke(255);
>>>>>>> parent of 22b87e6 (My final work. I think I failed the main challenge I set myself)
     point(x,y,z); //point to test out the structure
    
     
     //Currently stuck on how to have the mouse rotate the sphere or show it in total
     //Need to do some research and read the book more and ask more Stackoverflow questions but this is my
     //mine thing thus far. 
    
     
     
    }
  }
<<<<<<< HEAD
  //I had some help on this section of code with a kind dude on Stack Overflow
   for(int i = 0; i < total-1; i++){    
     beginShape(TRIANGLE_STRIP);
   for(int o = 0; o < total; o++){
     float colo = map(o, 0, total+1, 0, 255); 
     if (mousePressed == true){
       fill(colo-mouseX-mouseY, mouseY, mouseX); 
     }
     PVector p1 = sphere [i][o];
     strokeWeight(5); 
   stroke(255);
     vertex(p1.x,p1.y,p1.z); //point to test out the structure
     PVector p2 = sphere [i+1][o];
     vertex(p2.x,p2.y,p2.z);
     }
     endShape(); 
  }  
}
=======
 }
 
  
  
>>>>>>> parent of 22b87e6 (My final work. I think I failed the main challenge I set myself)
