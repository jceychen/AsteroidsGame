class Bullet extends Floater
{
  public Bullet(Spaceship chunky) {
    double dRadians = myPointDirection*(Math.PI/180);
    myCenterX = (int)(chunky.getX());
    myCenterY = (int)(chunky.getY());
    myXspeed = 2 * Math.cos(dRadians) + chunky.getXspeed();
    myYspeed = 2 * Math.sin(dRadians) + chunky.getYspeed();
    myPointDirection = (int)(chunky.getPointDirection());
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
  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
