class batarang
{

  PVector pos;
  PVector dir;
  float xspeed = -0.026625;
  batarang(float x, float y, float z)
  {
    pos = new PVector(x, y, z); 
    dir = new PVector(2,0,-4);
  }
  void drawSphere()
  {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    fill(255, 10, 125);
    rotateY(30);
    sphere(50);
    if (pos.z < -100)
    {
      dir.z = 4;
      xspeed = 0.026625;
    }
    if(pos.z >500)
    {
    dir.z = -4;
    xspeed = -0.026625;
    }
    pos.add(dir);
    
    dir.add(new PVector(xspeed,0,0));
    popMatrix();
  }
}
