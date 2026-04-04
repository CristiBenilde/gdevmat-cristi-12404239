class Walker
{
  float x;
  float y;
  
  
  
  void render()
  {
    circle (x,y,30);
  }
  
  void randomWalk()
  {
    int rng = int (random(8));
    
    if (rng == 0)
    {
      y+=10;
    }
    
    else if (rng == 1)
    {
      y-=10;
    }
    
    else if (rng == 2)
    {
      x+=10;
    }
    
    else if (rng == 3)
    {
      x-=10;
    }
    else if (rng == 4)
    {
      y+=10;
      x+=10;
    }
    else if (rng == 5)
    {
      y-=10;
      x-=10;
    }
    else if (rng == 6)
    {
      y+=10;
      x-=10;
    }
    else if (rng == 7)
    {
      y-=10;
      x+=10;
    }
  }
  
  void randomWalkBias()
  {
    int rng = int (random(100));
    
    if (rng < 40)
    {
      y+=10;
    }
    
    else if (rng < 60)
    {
      y-=10;
    }
    
    else if (rng < 80)
    {
      x+=10;
    }
    
    else
    {
      x-=10;
    }
  }
  
  void randomWalkBias8way()
  {
    // 25% chance each on going each direction
    
    float rng = random(1);
    
    if (rng < 0.125)
    {
      y+=10;
    }
    
    else if (rng < 0.250)
    {
      y-=10;
    }
    
    else if (rng < 0.375)
    {
      x+=10;
    }
    
    else if (rng < 0.500)
    {
      x-=10;
    }
    else if (rng < 0.625)
    {
      y+=10;
      x+=10;
    }
    else if (rng < 0.750)
    {
      y-=10;
      x-=10;
    }
    else if (rng < 0.875)
    {
      y+=10;
      x-=10;
    }
    else
    {
      y-=10;
      x+=10;
    }
  }
}
