class Star
{
  private int myX, myY, mySize;
  Star(){
    myX=(int)(Math.random()*1000);
    myY=(int)(Math.random()*1000);
    mySize = (int)(Math.random()*5);
  }
  public void show(){
    noStroke();
    fill(210, 122, 255, (int)(Math.random()*1000));
    ellipse(myX,myY,mySize,mySize);
  }
}
