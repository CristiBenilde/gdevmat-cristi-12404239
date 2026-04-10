Walker[] walkers = new Walker[8];

PVector wind = new PVector (0.2, 0);


void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  int posX = 0;
  int posY = 0;
  
  for (int i = 0; i < walkers.length; i++)
  {
    posX = Window.left;
    posY = 2 * (Window.windowHeight / walkers.length) * (i - (walkers.length / 2));
    
    walkers[i] = new Walker();
    walkers[i].setColor(random(255), random(255), random(255), 255);
    
    walkers[i].position = new PVector(posX,posY);
    
    walkers[i].mass = i + 1;
    walkers[i].scale = walkers[i].mass * 15;
  }
}

void draw()
{
  background (255);
  
  line (0, -400, 0, 400);
  
  for (int i = 0; i < walkers.length; i++)
  {
    float mew = 0.01f;
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = walkers[i].velocity.copy();
    PVector force = PVector.mult(wind, walkers[i].mass);
    
    if (walkers[i].position.x > 0)
    {
      mew = 0.4f;
    }

    if (frictionMagnitude > 0)
    {
      friction.normalize();
      friction.mult(-1);
      friction.mult(mew);
      walkers[i].applyForce(friction);
    }
    
    // Uncomment line below for my attempt on Bonus Objective
    //walkers[i].applyForce(force);
    walkers[i].applyForce(wind);
    walkers[i].applyForce(friction);
    
    walkers[i].bounce();
    walkers[i].update();

    walkers[i].render();
  }
}

void mousePressed()
{
  for (int i = 0; i < walkers.length; i++)
  {
    float spacing = Window.heightPx / (float)walkers.length;
    float posY = Window.bottom + spacing * i + spacing / 2;

    walkers[i].position = new PVector(Window.left, posY);
    walkers[i].setColor(random(255), random(255), random(255), 255);
    walkers[i].velocity.mult(0);
    walkers[i].acceleration.mult(0);
  }
}
