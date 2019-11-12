Particle [] arr = new Particle[500];
void setup()
{
  size(500,500);
  noStroke();
  for(int i = 0; i < arr.length; i++){
    arr[i] = new Particle();
    if(i == 0){
      arr[i] = new OddballParticle();
    }
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < arr.length; i++){
    arr[i].show();
    arr[i].move();
  }
    
}
void mousePressed() {
  setup();
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX = -150;
    myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*15;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void show(){
    fill(myColor);
    triangle(375+(float)myX,50+(float)myY,400+(float)myX,10+(float)myY,425+(float)myX,50+(float)myY);
  }
  void move(){
     myX=myX+Math.cos(myAngle)*mySpeed;
     myY=myY+Math.sin(myAngle)*mySpeed;

 }
}
class OddballParticle extends Particle{
  OddballParticle(){
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random() * 5;
    myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
  }
  void show(){
    fill(color(255));
    ellipse((float)myX,(float)myY,50,50);
  }
  
}
