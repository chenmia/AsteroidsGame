class Asteroid extends Floater {
  private int myRotSpeed;
  Asteroid() {
    if(Math.random() < 0.5)
    myRotSpeed = (int)(Math.random()*361);
    else
    myRotSpeed = -1*(int)(Math.random()*361);
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
