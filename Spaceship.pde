class Spaceship extends Floater
{
  public Spaceship()
  {
    corners = 7;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 15;
    yCorners[0] = 0;
    xCorners[1] = -11;
    yCorners[1] = 11;
    xCorners[2] = 0;
    yCorners[2] = -11;
    xCorners[3] = -5;
    yCorners[3] = -12;
    xCorners[4] = -5;
    yCorners[4] = 12;
    xCorners[5] = 0;
    yCorners[5] = 11;
    xCorners[6] = -11;
    yCorners[6] = -11;

    myCenterX = myCenterY = 300;
    myPointDirection = 0;
    myXspeed = myYspeed = 0;
    myColor = color(255);
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  public double getXspeed()
  {
    return myXspeed;
  }
  public double getYspeed()
  {
    return myYspeed;
  }
  public double getPointDirection()
  {
    return myPointDirection;
  }
}

