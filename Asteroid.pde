class Asteroid extends Floater
{
  private int rotation;
  public Asteroid()
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*5)-10;
    yCorners[0] = (int)(Math.random()*5)-5;
    xCorners[1] = (int)(Math.random()*5)+8;
    yCorners[1] = (int)(Math.random()*5)-10;
    xCorners[2] = (int)(Math.random()*5)+15;
    yCorners[2] = (int)(Math.random()*5);
    xCorners[3] = (int)(Math.random()*5)+10;
    yCorners[3] = (int)(Math.random()*5)+5;
    xCorners[4] = (int)(Math.random()*5)-8;
    yCorners[4] = (int)(Math.random()*5)+10;
    xCorners[5] = (int)(Math.random()*5)-15;
    yCorners[5] = (int)(Math.random()*5);

    rotation = (int)(Math.random()*20)-10;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myXspeed = myYspeed = (int)(Math.random()*5)-2;
    myPointDirection = (int)(Math.random()*360);
    myColor = color(178, 190, 181);
  }
  public void move()
  {
    turn(rotation);
    super.move();
  }
  public void show()
  {
    super.show();
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
