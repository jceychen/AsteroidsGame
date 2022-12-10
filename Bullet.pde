class Bullet extends Floater
{
  public Bullet(Spaceship chunky) {
    double dRadians = myPointDirection*(Math.PI/180);
    myCenterX = chunky.getX();
    myCenterY = chunky.getY();
    myXspeed = 3 * Math.cos(dRadians) + chunky.getXspeed();
    myYspeed = 3 * Math.sin(dRadians) + chunky.getYspeed();
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
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
