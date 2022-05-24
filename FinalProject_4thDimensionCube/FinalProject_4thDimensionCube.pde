import processing.sound.*;
SoundFile music; 
 

import processing.serial.*;

//I gave up on trying to work the button and minim, so I reshaped to my plan B which is a interactive hypercube.
//An idea I got from Adventure time and Marvel. 
float redA, grnA, bluA;
float rainbow = 255; 
int line = 4; 
float angle = 0;
Serial myPort; 
P4Vector[] points = new P4Vector[16];
int val; 

void setup() {
  fullScreen(P3D);
  redA = random(TWO_PI);
  grnA = random(TWO_PI);
  bluA = random(TWO_PI);
  points[0] = new P4Vector(-1, -1, -1, 1);
  points[1] = new P4Vector(1, -1, -1, 1);
  points[2] = new P4Vector(1, 1, -1, 1);
  points[3] = new P4Vector(-1, 1, -1, 1);
  points[4] = new P4Vector(-1, -1, 1, 1);
  points[5] = new P4Vector(1, -1, 1, 1);
  points[6] = new P4Vector(1, 1, 1, 1);
  points[7] = new P4Vector(-1, 1, 1, 1);
  points[8] = new P4Vector(-1, -1, -1, -1);
  points[9] = new P4Vector(1, -1, -1, -1);
  points[10] = new P4Vector(1, 1, -1, -1);
  points[11] = new P4Vector(-1, 1, -1, -1);
  points[12] = new P4Vector(-1, -1, 1, -1);
  points[13] = new P4Vector(1, -1, 1, -1);
  points[14] = new P4Vector(1, 1, 1, -1);
  points[15] = new P4Vector(-1, 1, 1, -1);
  String portName = Serial.list()[0]; 
  myPort = new Serial(this, portName, 9600); 
}

void draw() {
  if (myPort.available() > 0){
  val = myPort.read(); 
  }
  background(0);
  if (val == 1){
 background(color(cos(redA) * 25 + 25, cos(grnA) * 25 + 25, cos(bluA) * 25 + 25)); //Should change background gradually
  redA += random(0,0.001);
  grnA += random(0,0.001);
  bluA += random(0,0.001);
   
  } else if(val == 2){
  rainbow = radians(frameCount); 

  } else if (val == 3){
  line = 100; 

  }
  
  translate(width/2, height/2);
  rotateX(-PI/2);
  PVector[] projected3d = new PVector[16];

  for (int i = 0; i < points.length; i++) {
    P4Vector v = points[i];

    float[][] rotationXY = {
      {cos(angle), -sin(angle), 0, 0},
      {sin(angle), cos(angle), 0, 0},
      {0, 0, 1, 0},
      {0, 0, 0, 1}
    };

    float[][] rotationZW = {
      {1, 0, 0, 0},
      {0, 1, 0, 0},
      {0, 0, cos(angle), -sin(angle)},
      {0, 0, sin(angle), cos(angle)}
    };


    P4Vector rotated = matmul(rotationXY, v, true);
    rotated = matmul(rotationZW, rotated, true);

    float distance = 2;
    float w = 1 / (distance - rotated.w);

    float[][] projection = {
      {w, 0, 0, 0},
      {0, w, 0, 0},
      {0, 0, w, 0}
    };

    PVector projected = matmul(projection, rotated);
    projected.mult(width/8);
    projected3d[i] = projected;

    stroke(255, 200);
    strokeWeight(32);
    noFill();

    point(projected.x, projected.y, projected.z);
  }

  // Connecting
  for (int i = 0; i < 4; i++) {
    connect(0, i, (i+1) % 4, projected3d );
    connect(0, i+4, ((i+1) % 4)+4, projected3d);
    connect(0, i, i+4, projected3d);
  }

  for (int i = 0; i < 4; i++) {
    connect(8, i, (i+1) % 4, projected3d );
    connect(8, i+4, ((i+1) % 4)+4, projected3d);
    connect(8, i, i+4, projected3d);
  }

  for (int i = 0; i < 8; i++) {
    connect(0, i, i + 8, projected3d);
  }

  //angle = map(mouseX, 0, width, 0, TWO_PI);
  angle += 0.02;
  
}

void connect(int offset, int i, int j, PVector[] points) {
  PVector a = points[i+offset];
  PVector b = points[j+offset];
  strokeWeight(line);
  stroke(255*(.5+.5*cos(rainbow)),255,255);

  line(a.x, a.y, a.z, b.x, b.y, b.z);
}
