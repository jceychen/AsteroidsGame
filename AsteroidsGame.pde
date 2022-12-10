Spaceship chunky;
Star[] twinkle = new Star[200];
ArrayList <Asteroid> funky = new ArrayList <Asteroid>();
ArrayList <Bullet> spunky = new ArrayList <Bullet>();
public void setup()
{
  size(600, 600);
  chunky = new Spaceship();
  for (int i = 0; i < twinkle.length; i++) {
    twinkle[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
    funky.add(i, new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < twinkle.length; i++) {
    twinkle[i].show();
  }
  for (int i = 0; i < funky.size(); i++) {
    funky.get(i).show();
    funky.get(i).move();
    if (dist((float)chunky.getX(), (float)chunky.getY(), (float)funky.get(i).getX(), (float)funky.get(i).getY()) <= 20) {
      funky.remove(i);
    }
    for (int j = 0; j < spunky.size(); j++) {
      spunky.get(j).show();
      spunky.get(j).move();
      if (dist((float)spunky.get(j).getX(), (float)spunky.get(j).getY(), (float)funky.get(i).getX(), (float)funky.get(i).getY()) < 20) {
        funky.remove(i);
        spunky.remove(j);
      }
    }
  }
  chunky.show();
  chunky.move();
}
public void keyPressed()
{
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      chunky.turn(-10);
    }
    if (key == 'd' || key == 'D') {
      chunky.turn(10);
    }
    if (key == 'w' || key == 'W') {
      chunky.accelerate(2);
    }
    if (key == 's' || key == 'S') {
      chunky.accelerate(-2);
    }
    if (key == 'h' || key == 'H') {
      chunky.myCenterX = (int)(Math.random()*600);
      chunky.myCenterY = (int)(Math.random()*600);
      chunky.myXspeed = 0;
      chunky.myYspeed = 0;
      chunky.myPointDirection = (int)(Math.random()*360);
    }
    if (key == 's' || key == 'S'){
      spunky.add(new Bullet(chunky));
    }
  }
}
