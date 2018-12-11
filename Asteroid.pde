class Asteroid extends Floater {
  private int myRotSpeed;
  Asteroid() {
  corners = 6; 
  int[] xS = {10,0,-10,-10,0,10};
  int[] yS = {5,10,5,-5,-10,-5};
  xCorners = xS;
  yCorners = yS;
  myColor = color(16, 255, 0);
  myStroke = 2;
  myCenterX = (int)(Math.random()*width);
  myCenterY = (int)(Math.random()*height);
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
   turn(myRotSpeed);
   super.move();
  }
}
