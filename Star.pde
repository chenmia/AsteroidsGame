class Star
{
  private int myX, myY;
  Star(){
    myX=(int)Math.random()*1000;
    myY=(int)Math.random()*1000; 
  }
  public void show(){
    fill(191, 246, 255);
    ellipse(myX,myY,3,3);
  }
}
