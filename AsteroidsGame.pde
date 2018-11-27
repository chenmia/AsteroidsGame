Spaceship bob;
public void setup() 
{
  bob = new Spaceship();
  size(500,500);
  background(0);
}
public void draw() 
{
    background(0);
    bob.move();
    bob.show();
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
    bob.setX((int)(Math.random()*501));
    bob.setY((int)(Math.random()*501));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)Math.random()*361);
  } 
  }
    
