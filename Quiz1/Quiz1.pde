void setup()
{
  size(1280, 720, P3D);
  camera(0,0, -(height/2.0) / tan(PI*30 / 180), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background (255); // sets the Background color of the Whole Window
  
  drawCartesianPlane();
  drawQuadraticFunction();
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
  
  color green = color (0,255,0);
  fill(green);
  noStroke();
  
  for (float x = -200; x <= 200; x++)
  {
    circle (x, x + 2, 5);
    
  }
}

void drawQuadraticFunction()
{
  color Red = color (255,0,0);
  fill(Red);
  stroke(Red);
  
  for (float x = -300; x <= 300; x+=0.1f)
  {
    circle (x, (float) Math.pow(x,2) - (15 * x) - 3, 3);
  }
}
