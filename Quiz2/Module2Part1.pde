

void setup()
{
  size (1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker myWalker = new Walker();
Walker myBiasedWalker = new Walker();
Walker myBiased8WayWalker = new Walker();

void draw()
{
  
  
  
  fill(random(255), random(255), random(255),random(50,100));
  noStroke();
  
  myWalker.randomWalk();
  myBiasedWalker.randomWalkBias();
  myBiased8WayWalker.randomWalkBias();
  
  myWalker.render();
  myBiasedWalker.render();
  myBiased8WayWalker.render();
  
}
