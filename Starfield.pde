//your code here
Particle[] parts = new Particle[1000];
//boolean start=false;
void setup(){
  //your code here
  noStroke();
  size(400,400);
  for(int i=0;i<parts.length;i++){
    parts[i]=new Particle();
  }
  for(int i=0;i<10;i++){
    parts[i]=new OddBallParticle();
  }
}
void draw(){
  background(0);
  for(int i=0;i<parts.length;i++){
    parts[i].show();
    parts[i].move();
  }
  //your code here
}
class Particle{
  double myX,myY,mySpeed, myAngle,mySize;
  int myColor;
  Particle(){
    myX=myY=200;
    mySpeed=(int)(Math.random()*10);
    myAngle=(int)(Math.random()*2*Math.PI);
    mySize=(int)(Math.random()*5);
    myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void move(){
    myX=myX+mySpeed;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
  void mousePressed(){
    redraw();
  }
}

class OddBallParticle extends Particle{
  OddBallParticle(){
    myX=mySpeed+myAngle;
    myY=mySpeed+myAngle;
    mySpeed=(int)(Math.random()*2)+1;
    myAngle=(int)(Math.random()*3)+20;
  }
  void move(){
    myX=myX+mySpeed;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}
