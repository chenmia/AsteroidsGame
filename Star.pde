class Star
{
  private int myX, myY, mySize;
  Star(){
    myX=(int)(Math.random()*w);
    myY=(int)(Math.random()*h);
    mySize = (int)(Math.random()*5);
  }
  public void show(){
    noStroke();
    fill(210, 122, 255, (int)(Math.random()*500));
    ellipse(myX,myY,mySize,mySize);
  }
}
