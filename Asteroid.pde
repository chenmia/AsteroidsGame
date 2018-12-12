class Asteroid extends Floater {
  private int myRotSpeed;
  Asteroid() {
  corners = 10; 
  int[] xS = {0,10,30,16,19,0,-19,-16,30,-10};
  int[] yS = {30,-11,-7,9,30,21,30,9,-7,-11};
  xCorners = xS;
  yCorners = yS;
  myColor = color(16, 255, 0);
  myStroke = 2;
  myCenterX = (int)(Math.random()*width);
  myCenterY = (int)(Math.random()*height);
  myDirectionX = (int)(Math.random()*3+1);
  myDirectionY = (int)(Math.random()*3+1);
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
