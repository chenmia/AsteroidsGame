class Star
{
  private int myX, myY;
  private int twinkle;
  Star(){
    myX=(int)(Math.random()*1000);
    myY=(int)(Math.random()*1000);
  }
  public void show(){
    noStroke();
    fill(210, 122, 255, (int)(Math.random()*1000));
    ellipse(myX,myY,2,2);
  }
}
