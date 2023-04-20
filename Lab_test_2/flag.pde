class flag
{
  float size;
  float x;
  float y;
  float theta = 0;
  boolean grow;
  
  color[] colours = {#000000, #7E5701, #FF7EF2, #FFF300};
  
  flag(float size,float x, float y)
  {
    this.size = size;
    this.x = x;
    this.y = y;
    grow = true;
  }
  
  
  void move()
  {
    x+=0.1;;
    if(x>width)
    {
      x = 0-size;
    }
    
    if(grow)
    {
      size++;
      if(size > 200)
      {
        grow = false;
      }
    }
    else
    {
      size--;
      if(size < 10)
      {
        grow = true;
      }
    }
  }
  
  void wave()
  {
    float w = size;
    float h = (map(size,0,width,height,0));
    noStroke();
    float a = h/6;
    float b = map(a,0,h,0,255);
    float c = h/8;
    for(int i = 0; i < 6; i++)
    {
      fill(b*i,255,255);
      rect(x,y+a*i,w,a);
    }
    for(int i = 0; i<4;i++)
    {
      fill(colours[i]);
      triangle(x,y+c*i,x,y+h-c*i,x+w/2-c*i,y+h/2);
    }
    stroke(#7E00FF);
    strokeWeight(map(h,0,height,2,1));
    noFill();
    circle(x+w/8,y+h/2,h/8);
  }
}
