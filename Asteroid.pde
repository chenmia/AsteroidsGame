class Asteroid extends Floater {
  private int myRotSpeed;
  Asteroid() {
  corners = 10; 
  float[] xS = {0,5,15,8,9.5,0,-9.5,-8,-15,-5};
  float[] yS = {-15,-5.5,-3.5,4.5,15,10.5,15,4.5,-3.5,-5.5};
  xCorners = xS;
  yCorners = yS;
  myColor = color(16, 255, 0);
  myStroke = 2;
  myCenterX = (int)(Math.random()*w);
  myCenterY = (int)(Math.random()*h);
  myDirectionX = (int)(Math.random()*3+1);
  myDirectionY = (int)(Math.random()*3+1);
  myPointDirection = (int)(Math.random()*360);  
   if(Math.random() < 0.5)
    myRotSpeed = (int)(Math.random()*4+1);
   else
    myRotSpeed = -1*(int)(Math.random()*5+1);
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
