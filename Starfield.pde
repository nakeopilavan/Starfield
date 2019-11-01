Particle [] yes = new Particle[1000];
void setup()
{
  size(800,800);
 for(int i = 0;i<yes.length;i++){
    yes[i] = new Particle();
  }
  yes[0] = new OddballParticle();
}
void draw()
{
  background(0);
	for(int i = 0;i<yes.length;i++){
    yes[i].show();
    yes[i].move();
  }
    
}
class Particle
{
	int col;
  double myx, myy,angle,speed;
  Particle(){
    myx = 400;
    myy = 400;
    col = (int)(Math.random()*255);
    angle = (Math.random()*(2*Math.PI));
    speed = (Math.random()*8+1);
  }
  void move()
  {
    myx += (Math.cos(angle)*speed);
    myy += (Math.sin(angle)*speed);
    
  }
  void show()
  {
    fill(col);
    ellipse((float)myx,(float)myy,5.0,5.0);
  }
}
class OddballParticle extends Particle
{
	OddballParticle() 
  {
    myx = 400;
    myy = 400;
    col = 155;
    angle = (Math.random()*(2*Math.PI));
    speed = (Math.random()*+1);
  }
  void move()
  {
    myx += (Math.cos(angle)*speed);
    myy += (Math.sin(angle)*speed);
    
  }
  void show()
  { 
    fill(col);
    rect((float)myx,(float)myy,50,50);
  }
}
void mousePressed() {
 redraw(); 
}
