Liquid ocean = new Liquid (0, -100, Window.right, Window.bottom, 0.1f);
Walker[] walkers = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  int posX = 0;
  int posY = 0;
  
   for (int i = 0; i < walkers.length; i++)
  {
    int spacing = Window.widthPx / walkers.length;

    posX = Window.left + spacing * i + spacing / 2;
    posY = Window.top;
    
    walkers[i] = new Walker();
    walkers[i].setColor(random(255), random(255), random(255), 255);
    
    walkers[i].position = new PVector(posX,posY);
    
    walkers[i].mass = random(1,5);
    walkers[i].scale = walkers[i].mass * 15;
  }
}

void draw()
{
  background (255);
  
  ocean.render();
  
  for (int i = 0; i < walkers.length; i++)
  {
    float c = 0.1f;
    float normal = 1;
    float frictionMagnitude = c * normal;
    PVector friction = walkers[i].velocity.copy();
    walkers[i].applyForce(friction.mult(-1).mult(frictionMagnitude));
    
    PVector wind = new PVector(0.1, 0);
    walkers[i].applyForce(wind);
    
    PVector gravity = new PVector (0, -0.15f * walkers[i].mass);
    walkers[i].applyForce(gravity);
    
    if (ocean.isCollidingWith(walkers[i]))
    {
      PVector dragForce = ocean.calculateDragForce(walkers[i]);
      walkers[i].applyForce(dragForce);
      println("Colliding.");
    }
    walkers[i].bounce();
    walkers[i].update();
    
    walkers[i].render();
  }
}
