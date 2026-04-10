Walker[]walkers = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  float posX = 0;
  float posY = 0;
  
  for (int i = 0; i < walkers.length; i++)
  {
    posX = random(Window.left, Window.right);
    posY = random(Window.bottom, Window.top);
    
    walkers[i] = new Walker();
    walkers[i].setColor(random(255), random(255), random(255), 255);
    walkers[i].gravitationalConstant = 2;
    
    walkers[i].position = new PVector(posX,posY);
    
    walkers[i].mass = random(1,5);
    walkers[i].scale = walkers[i].mass * 15;
  }

}

void draw()
{
  background (255);
  
  for (int i = 0; i < walkers.length; i++)
  {
    for (int j = 0; j < walkers.length; j++)
    {
      if (i != j)
      {
        PVector force = walkers[j].calculateAttraction(walkers[i]);
        walkers[i].applyForce(force);
      }
    }
  }

  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].bounce();
    walkers[i].update();
    walkers[i].render();
  }
}
