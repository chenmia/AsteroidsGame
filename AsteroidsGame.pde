Spaceship bob;
Star[] sue = new Star[500];
public void setup() 
{
  size(1000,1000);
  background(0);
  bob = new Spaceship();
  for(int i = 0; i<sue.length; i++) {sue[i] = new Star();}
} 
public void draw() 
{
    background(0);
    bob.show();
    bob.move();
    for(int i = 0; i<sue.length; i++) {sue[i].show();}
  }
public void keyPressed(){
  if(keyCode == LEFT){
    bob.turn(-5);
    }
  if(keyCode == RIGHT){
    bob.turn(5);
    }
  if(keyCode == UP){
    bob.accelerate(0.3);
  }
  if(keyCode == DOWN){
    bob.accelerate(-0.3);
  }
  if(keyCode == TAB){
    bob.setX((int)(Math.random()*1000));
    bob.setY((int)(Math.random()*1000));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)Math.random()*361);
  } 
  }
    
