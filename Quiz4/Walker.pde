class Walker
{
  float x;
  float y;
  float tx = 1, ty = 10000;
  float noise = 0;
  float ts = 5000;
  float thickness = map(noise(ts), 0, 1, 5, 150);
  void render()
  {
    ellipse (x,y,thickness,thickness);
  }
  
  void perlinWalk()
  {
   x = map(noise(tx), 0, 1, -640, 640);
   y = map(noise(ty), 0, 1, -360, 360);
   
   tx += 0.01f;
   ty += 0.01f;
  }
  
}
