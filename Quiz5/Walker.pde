class Walker
{
  PVector wPosition = new PVector (Window.left + Window.right,Window.top + Window.bottom);
  PVector wSpeed = new PVector (5,8);
  
  void render()
  {
    circle (wPosition.x, wPosition.y, 50);
  }
  
  void vecWalk()
  {
    PVector step = PVector.random2D();
    step.mult(10);
    
    wPosition.add(step);
  }
  
  void moveAndBounce()
  {
    wPosition.add(wSpeed);
  
  if ((wPosition.x > Window.right) || (wPosition.x < Window.left))
    {
      wSpeed.x *= -1;
    }
  
  if ((wPosition.y > Window.top) || (wPosition.y < Window.bottom))
    {
      wSpeed.y *= -1;
    }
  }
}
