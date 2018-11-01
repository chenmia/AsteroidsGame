class Spaceship extends Floater  
{   
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
  
  public Spaceship() {
  corners = 4; 
  xCorners = new int[corners];  
  yCorners = new int[corners];  
  xCorners[0] = (int)myCenterX-8;
  yCorners[0] = (int)myCenterY-8;
  xCorners[1] = (int)myCenterX+16;
  yCorners[1] = (int)myCenterY;
  xCorners[2] = (int)myCenterX-8;
  yCorners[2] = (int)myCenterX+8;
  xCorners[3] = (int)myCenterX-2;
  yCorners[3] = (int)myCenterY;
  myColor = 255;  
  myCenterX = 250;
  myCenterY = 250;
  myDirectionX = 0;
  myDirectionY = 0;
  myPointDirection = 0;  
}

public void keyPressed(){
  if(key == TAB){
    myCenterY=myCenterY+3;
}                    
}
}
