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
  xCorners = new float[corners];  
  yCorners = new float[corners];  
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  xCorners[3] = -2;
  yCorners[3] = 0;
  myColor = color(0, 255, 255);
  myStroke = 2;
  myCenterX = width/2;
  myCenterY = height/2;
  myDirectionX = 0;
  myDirectionY = 0;
  myPointDirection = 0;  
}
}
