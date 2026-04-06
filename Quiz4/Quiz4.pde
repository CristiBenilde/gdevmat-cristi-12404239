float tR = 0;
float tG = 1000;
float tB = 2000;

void setup()
{
  size(1280,720, P3D);
  background (255);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker perlinWalker = new Walker();

void draw()
{
  perlinRGB();
  
  perlinWalker.render();
  perlinWalker.perlinWalk();
}

void perlinRGB()
{
  float noiseR = noise(tR);
  float noiseG = noise(tG);
  float noiseB = noise(tB);
  
  float r = map(noiseR, 0, 1, 0, 255);
  float g = map(noiseG, 0, 1, 0, 255);
  float b = map(noiseB, 0, 1, 0, 255);
  
  fill(r, g, b);
  noStroke();
  
  tR += 0.01;
  tG += 0.01;
}
