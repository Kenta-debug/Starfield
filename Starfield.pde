Particle [] bob;

void setup()
{
  //your code here
  background(0);
  bob = new Particle[1000];
  
  size(1000,1000);
  for( int i = 0; i < bob.length; i++)
  {
    bob[i] = new Particle();
    bob[i].Angle();
    bob[i].speed();
  }
  
}
void draw()
{
  //your code here
  background(0);
  for(int i = 0; i < bob.length; i++)
  {
      
      bob[i].move();
      bob[i].show();
  }
}
class Particle
{
double angle, speed,ellipseSize, myX, myY;
  Particle()
  {
    ellipseSize = 10;
    myX = 250;
    myY = 250;
  }  
  void Angle()
  {
    angle = Math.random()*2 * Math.PI;
    
  }
  void speed()
  {
    speed = Math.random() * 10;
  }
  void move()
  {
    myX = myX + Math.cos(angle) * speed;
    myY = myY + Math.sin(angle) * speed;
  
  }
  
  void show()
  {
    fill(45,45,255);
    ellipse((float)myX,(float)myY,(float)ellipseSize, (float)ellipseSize);
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}
