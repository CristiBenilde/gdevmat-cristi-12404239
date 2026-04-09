public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;

  public void update()
  {
    this.acceleration = PVector.random2D();
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
  }

  public void update2(PVector target)
  {
    PVector dir = PVector.sub(target, position);

    dir.normalize();
    dir.mult(0.2);
    acceleration = dir;
    
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
  }

  public void render()
  {
    circle(position.x, position.y, scale);
  }
}
