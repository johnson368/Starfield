Particle[] parts = new Particle [1000];
boolean start = false;
void setup()
{
  size(600,600);
  for(int i= 0; i < parts.length; i++)
  {
  parts[i] = new Particle();
  parts[0] = new OddballParticle();
  }
}
void draw()
{
background(  255, 0, 0);
for (int i =0; i < parts.length; i++)
{ 
 
  parts[i].move();
  parts[i].show();
}
}
void mousePressed()
{
     for (int i =0; i < parts.length; i++)
{
  parts[i].move();
  parts[i].show();
}
}
class Particle
{
   double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX = myY = 300;
    myAngle = Math.random() * 2*Math.PI;
    mySpeed = (Math.random()* 21)-18;
    myColor = color((int)(Math.random()*120), (int)(Math.random()*150), (int)(Math.random()*200));
  }
  void move() 
  {
    if(mousePressed) {
      myX= mouseX;
      myY = mouseY/2.5;
    }
     myX = myX + Math.cos((float)myAngle* (float)mySpeed);
     myY = myY + Math.sin((float)myAngle *(float) mySpeed);
  }
   void show()
  {
        fill(myColor);
        ellipse((float)myX, (float)myY, 5,5);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = myY = 200;
    myAngle = Math.random() * 2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
     if(mousePressed) {
      myX= mouseX;
      myY = mouseY;
    }
     myX = myX + Math.cos((float)myAngle* ((float)mySpeed)*10);
  }
  void show()
  {
    fill(250,110,80);
    rect((float)myX, (float)myY, 125 ,50);
    ellipse((float)myX+30, (float)myY+50, 50,50);
    ellipse((float)myX+95, (float)myY+50, 50,50);
  }
}
