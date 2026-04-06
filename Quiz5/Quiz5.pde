void setup()
{
  size(1280,720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

Walker myVectorWalker = new Walker();
Walker myBouncyBall = new Walker();

void draw()
{   
  //flush the screen with background function
  background (255);
  
  fill (182,52,100);
  
  myVectorWalker.vecWalk();
  myBouncyBall.moveAndBounce();
  
  myVectorWalker.render();
  myBouncyBall.render();
}
