class Bullet extends Floater{
  Bullet(Spaceship theShip) {
    myStroke = 0;
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 10 * Math.cos(dRadians) + theShip.getDirectionX();
    myDirectionY = 10 * Math.sin(dRadians) + theShip.getDirectionY();
}

public void show() {
  noStroke();
  fill(255,0,0);
  ellipse((float)myCenterX, (float)myCenterY, 8, 8);
}
public void move() {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
}
  public void setX(int x) {myCenterX = x;} 
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}  
  public void setDirectionX(double x){myDirectionX = x;}  
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 
}
