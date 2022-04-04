int y = 80;
int x = 50;
int spacing = 2;
int len = 20;
void setup(){
  size(500,500);
    background(255);
}

void draw (){

 float w = 600 ;
 float Ellipselength = 100;
while (w > Ellipselength) {
stroke(0);
fill(w+28, w , 56);
ellipse(250, 250, w, w);
w-=40;
}
}
