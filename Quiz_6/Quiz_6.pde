void setup()
{
  size(1080,720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y= -(mouseY - Window.windowHeight);
  
  return new PVector(x, y);
}

void draw()
{ 
  background (100);
  
  Lightsaber();
}

void Lightsaber()
{
  PVector Saber = mousePos();
  PVector Handle = mousePos();
  
  Handle.normalize().mult(75);
  
  //Outer Red Glow
  strokeWeight(18);
  stroke (255, 0, 0, 50);
  
  line (0, 0, Saber.x , Saber.y );
  line (0, 0, -Saber.x ,-Saber.y );
  
  //Inner White Glow
  strokeWeight(8);
  stroke (255, 255, 255, 150);
  
  line (0, 0, Saber.x  , Saber.y);
  line (0, 0, -Saber.x,-Saber.y);
  
  //Handle
  strokeWeight(18);
  stroke (0, 0, 0);
  
  line (0, 0, Handle.x,Handle.y);
  line (0, 0, -Handle.x,-Handle.y);
  
  println(Saber.mag());
}
