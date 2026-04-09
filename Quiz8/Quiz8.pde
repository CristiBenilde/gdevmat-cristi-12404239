Walker[] walkers = new Walker[10];

PVector gravity = new PVector (0, -0.4);
PVector wind = new PVector (0.15, 0);

void setup()
{
  size(1200, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    walkers[i].setColor(random(255), random(255), random(255), 255);
    
    walkers[i].position = new PVector(-300,200);
    
    walkers[i].mass = i + 1;
    walkers[i].scale = walkers[i].mass * 15;
  }
}

void draw()
{
  background (255);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].render();
    walkers[i].update();
    walkers[i].applyForce(wind);
    walkers[i].applyForce(gravity);
    walkers[i].bounce();
  }
}
