Spaceship ship;
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
Star[] stars = new Star[1000];
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int w = 700;
int h = 700;
public void setup() 
{
  size(700,700);
  background(0);
  ship = new Spaceship();
  for(int i = 0; i<stars.length; i++) {stars[i] = new Star();}
  for(int i = 0; i<20; i++) {rocks.add(new Asteroid());}
} 
public void draw() 
{
    background(0);
    for(int i = 0; i<stars.length; i++) {stars[i].show();}
    for(int i = 0; i<rocks.size(); i++) {
      rocks.get(i).show();
      rocks.get(i).move();
      float distance = dist(ship.getX(), ship.getY(), rocks.get(i).getX(), rocks.get(i).getY());
      if(distance<20){rocks.remove(i);}
    }
    for(int i = 0; i<bullets.size(); i++) {
      bullets.get(i).show();
      bullets.get(i).move();
    }
    for(int i = 0; i<bullets.size(); i++){
      for(int x = 0; x<rocks.size(); x++){
        float bulletDist = dist(bullets.get(i).getX(), bullets.get(i).getY(), rocks.get(x).getX(), rocks.get(x).getY());
        if(bulletDist<20){
        bullets.remove(i);
        rocks.remove(x);
        break;
      }
      }
    }
    ship.show();
    ship.move();
  }
public void keyPressed(){
  if(keyCode == UP){
    ship.turn(-5);
    }
  if(keyCode == DOWN){
    ship.turn(5);
    }
  if(keyCode == RIGHT){
    ship.accelerate(0.3);
  }
  if(keyCode == LEFT){
    ship.accelerate(-0.3);
  }
  if(keyCode == TAB){
    ship.setX((int)(Math.random()*1000));
    ship.setY((int)(Math.random()*1000));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    ship.setPointDirection((int)(Math.random()*361));
  } 
  if(keyCode == ENTER) {
    bullets.add(new Bullet(ship));
  }
  }
    
