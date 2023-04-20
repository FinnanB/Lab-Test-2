


void setup()
{
  //fullScreen();
  size(500,500);
  colorMode(HSB);
  noStroke();
  for(int i = 0;i<10;i++)
  {
    pride.add(new flag(random(10,100),random(0,width),random(0,height)));
  }
}

ArrayList<flag> pride = new ArrayList<flag>();

void draw()
{
  background(255);
  for(int i = 0; i <pride.size();i++)
  {
    pride.get(i).move();
    pride.get(i).wave();
  }
}
