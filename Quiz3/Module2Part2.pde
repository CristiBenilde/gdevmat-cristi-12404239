void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
}

void draw()
{
  int yCoords = int(random(-720,720));
  
  float gaussian = randomGaussian();
  
  float standardDeviation = 200;
  float mean = 0;
  
  float x = standardDeviation * gaussian + mean;
  
  fill(random(255), random(255), random(255),random(50,100));
  noStroke();
  
  circle(x, yCoords, 30);
  
  if (frameCount % 300 == 0)
  {
    println("300 Frames reached, clearing graphics.");
    background (255);
  }
}
