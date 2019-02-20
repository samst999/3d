PVector pos = new PVector(100, 100, 100);
PVector dir = new PVector(100, 100, 100);
float x = 400;
float y = 400;
float z = -400;
float rot = PI/4;
import queasycam.*;
QueasyCam cam;
float counter ;
PShape baymax;
void setup()
{
  size(800, 800, P3D);
  cam = new QueasyCam(this);
  cam.sensitivity = 0.5;
  cam.speed = 2;
  perspective(PI/3, (float)width/height, 0.01, 10000);
  baymax = loadShape("Big/Bigmax.obj");
  baymax.scale(20,20,20);
  pos = new PVector(x, y, z);
  
}

void draw()
{
  background(0); 
  pushMatrix();
  translate(x, y,z);
  shape(baymax, 0,0);
  popMatrix();
  rot = rot + PI/60;
}
