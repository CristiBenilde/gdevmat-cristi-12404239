Walker [] walkers = new Walker [100];

void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    walkers[i].position = new PVector(random(-width/2, width/2),random(-height/2, height/2));
    walkers[i].scale = random(10, 25);
    
  }
}

PVector mousePos()
{
  float x = mouseX - width / 2;
  float y= -(mouseY - height / 2);
  
  return new PVector(x, y);
}

void draw()
{
  background (80);
  
  PVector mouse = mousePos();
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].update2(mouse);
    walkers[i].render();
  }
}
