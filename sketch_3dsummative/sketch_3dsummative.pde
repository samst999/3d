batarang B ;
int x = 400;
int y = 400;
int z = 500;
void setup()
{
  size(800, 800, P3D);
  B = new batarang(x, y, z);
}

void draw()
{
  background(0);
  if (keyPressed == true)
  {
    if (key == ' ')
    {
      B.drawSphere();
    }
  }
}
