Mover blackhole = new Mover();
Mover [] movers = new Mover [100];

void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);

  blackhole = new Mover(random(-Window.windowWidth, Window.windowWidth),random(-Window.windowHeight, Window.windowHeight),90);
  blackhole.setColor(255, 255, 255, 255);
  
  for (int i = 0; i < movers.length; i++)
  {
    float x = randomGaussian() * 200;
    float y = randomGaussian() * 200;

    movers[i] = new Mover(x, y, random(5, 20));
    movers[i].setColor(random(255), random(255), random(255), 255);
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
  background(0);
  
  //Uncommenting line below sets the blackhole's position to the mouse.
  //blackhole.position = mousePos();

  for (int i = 0; i < movers.length; i++)
  {
    PVector direction = PVector.sub(blackhole.position, movers[i].position);

    direction.normalize();
    direction.mult(5);

    movers[i].position.add(direction);
    movers[i].render();
  }

  fill(255,255,255);
  noStroke();
  blackhole.render();
  
  if (frameCount % 300 == 0)
  {
    resetSimulation();
  }

}

void resetSimulation()
{
  blackhole.position = new PVector(random(-Window.windowWidth, Window.windowWidth),random(-Window.windowHeight, Window.windowHeight));

  for (int i = 0; i < movers.length; i++)
  {
    float x = randomGaussian() * 200;
    float y = randomGaussian() * 200;

    movers[i].position = new PVector(x, y);
  }
}
