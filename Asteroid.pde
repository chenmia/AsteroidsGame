class Asteroid extends Floater {
  private int myRotSpeed;
  Asteroid() {
  corners = 4; 
  xCorners = new int[corners];  
  yCorners = new int[corners];  
  xCorners[0] = 0;
  yCorners[0] = 0;
  xCorners[1] = 10;
  yCorners[1] = 5;
  xCorners[2] = 20;
  yCorners[2] = 0;
  xCorners[3] = 10;
  yCorners[3] = -5;
  myColor = 180;
  myCenterX = (int)(Math.random()*1000);
  myCenterY = (int)(Math.random()*1000);
  myDirectionX = 2;
  myDirectionY = 2;
  myPointDirection = (int)(Math.random()*360);  
   if(Math.random() < 0.5)
    myRotSpeed = (int)(Math.random()*5);
   else
    myRotSpeed = -1*(int)(Math.random()*5);
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
  public void move() {
   super.move();
   myPointDirection+=myRotSpeed;
  }
}
