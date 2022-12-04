class Spaceship extends Floater
{
  public Spaceship()
  {
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -10;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -5;
    yCorners[3] = 12;
    xCorners[4] = 12;
    yCorners[4] = -5;
    xCorners[5] = 8;
    yCorners[5] = -8;
    xCorners[6] = 0;
    yCorners[6] = 16;
    xCorners[7] = -10;
    yCorners[7] = -10;

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
}

