
/*Atleast one array, two user defined functions, a timed event using millis(), and 
a conditional statement.*/
//SS6_BusMoving
int start; 
int time; 
int end; 
int time2;
int Stopwatch [] = {start, time, end, time2}; 
void setup(){
  size(800, 800);
  start = millis(); 
  time = 1000; 
  time2 = 10000; 
  
  
}

void draw(){
  background(255); 
   end = millis();
  if(end - start >= time){ 
  colorBackground(); 
    bus(); 
    
  
  } else if (Stopwatch[2] - Stopwatch[0] <= Stopwatch[3] && Stopwatch[2] - Stopwatch[0] >= Stopwatch[1]){
   background(0, 255, 0);  
  }
}

void bus(){
  fill(0);
  circle(105, 520, 100);
  circle(385, 520, 100);
  noFill();
  fill(255, 255, 0); 
  rect(50, 400, 400, 100);
  
   
}

void colorBackground(){
  int r = 100;
  int b = 45;
  int g = 20; 
 background(r, g, b);
 r +=10;
 
 
}
