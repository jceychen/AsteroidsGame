Spaceship chunky;
Star[] twinkle = new Star[200];
public void setup() 
{
  size(600,600);
  chunky = new Spaceship();
  chunky.show();
  chunky.move();
  for (int i = 0; i < twinkle.length; i++){
    twinkle[i] = new Star();
  }
}
public void draw(){
  background(0);
  for (int i = 0; i < twinkle.length; i++){
    twinkle[i].show();
  }
}
public void keyPressed(){
  if(keyPressed){
    if(key == 'a' || key == 'A'){
      chunky.turn(-10);
    }
    if(key == 'd' || key == 'D'){
      chunky.turn(10);
    }
    if(key == 'w' || key == 'W'){
      chunky.accelerate(2);
    }
    if(key == 'h' || key == 'H'){
      chunky.hyperspace();
    }
  }
}

