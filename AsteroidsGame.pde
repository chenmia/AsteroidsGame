Spaceship bob;
ArrayList<Asteroid> joe = new ArrayList<Asteroid>();
Star[] sue = new Star[500];
ArrayList<Bullet> dan = new ArrayList<Bullet>();
public void setup() 
{
  size(1000,1000);
  background(0);
  bob = new Spaceship();
  for(int i = 0; i<sue.length; i++) {sue[i] = new Star();}
  for(int i = 0; i<20; i++) {joe.add(new Asteroid());}
} 
public void draw() 
{
    background(0);
    for(int i = 0; i<sue.length; i++) {sue[i].show();}
    for(int i = 0; i<joe.size(); i++) {
      joe.get(i).show();
      joe.get(i).move();
      float distance = dist(bob.getX(), bob.getY(), joe.get(i).getX(), joe.get(i).getY());
      if(distance<20){joe.remove(i);}
    }
    for(int i = 0; i<dan.size(); i++) {
      dan.get(i).show();
      dan.get(i).move();
    }
    bob.show();
    bob.move();
  }
public void keyPressed(){
  if(keyCode == UP){
    bob.turn(-5);
    }
  if(keyCode == DOWN){
    bob.turn(5);
    }
  if(keyCode == RIGHT){
    bob.accelerate(0.3);
  }
  if(keyCode == LEFT){
    bob.accelerate(-0.3);
  }
  if(keyCode == TAB){
    bob.setX((int)(Math.random()*1000));
    bob.setY((int)(Math.random()*1000));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)Math.random()*361);
  } 
  if(keyCode == ENTER) {
    dan.add(new Bullet(bob));
  }
  }
    
