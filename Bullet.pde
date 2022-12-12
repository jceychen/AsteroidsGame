class Bullet extends Floater
{
  public Bullet(Spaceship chunky) {
    myCenterX = chunky.getX();
    myCenterY = chunky.getY();
    myXspeed = chunky.getXspeed();
    myYspeed = chunky.getYspeed();
    myPointDirection = chunky.getPointDirection();
    accelerate(6.0);
  }
  public void show()
  {
    noStroke();
    fill(135, 206, 235);
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
  public void move()
  {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
