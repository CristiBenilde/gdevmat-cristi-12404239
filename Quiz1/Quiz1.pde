int diameter = 10;
float t = 0;
float dt = .2;
float amplitude = 50;
float frequency = .7;

void setup()
{
  size(1280, 720, P3D);
  camera(0,0, -(height/2.0) / tan(PI*30 / 180), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background (255); // sets the Background color of the Whole Window
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  waveDraw();
}

void drawCartesianPlane ()
{
  color black = color (0,0,0); // Declares color variable
  
   strokeWeight(2);
  
  fill(black);
  stroke(black);
  
  line (300, 0, -300, 0);
  line (0, 300, 0, -300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line (i, 5, i, -5);
    line (5, i, -5, i);
  }
  
}

void drawLinearFunction()
{
  /*
  f(x) = x + 2
  Let x be 4, then y = 6 (4,6)
  Let x be -5, then y = -3 (-5, 3)
  */
  
  color Purple = color (128,0,128);
  fill(Purple);
  noStroke();
  
  for (float x = -200; x <= 200; x++)
  {
    circle (x, -5 * x + 30, 5);
    
  }
}

void drawQuadraticFunction()
{
  color Yellow = color (255,255,0);
  fill(Yellow);
  stroke(Yellow);
  
  for (float x = -300; x <= 300; x+=0.1f)
  {
    circle (x, (float) Math.pow(x,2) - (15 * x) - 3, 3);
  }
}

void waveDraw()
{
  color Blue = color (0,0,255);
  fill(Blue);
  stroke(Blue);
  
  for(int i=0; i < 500/diameter+ 0; i++)
  {
    ellipse(i*diameter - 250, amplitude*sin(frequency*(t+i))+height/2 + - 350,diameter,diameter);
  }
  t += dt;
}
