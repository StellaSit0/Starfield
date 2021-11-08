Particle[] parts = new Particle[1000];
void setup(){
  //your code here
  noStroke();
  background(0);
  size(400,400);
  for(int i=0;i<parts.length;i++){
    parts[i]=new Particle();
  }
  for(int i=0;i<10;i++){
    parts[i]=new OddBallParticle();
  }
}
  //your code here
class Particle{
  double myX,myY,mySpeed, myAngle;
  int myColor;
  Particle(){
    myX=myY=250;
    mySpeed=(float)(Math.random()*10);
    myAngle=(int)(Math.random()*Math.PI*20);
    myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void move(){
    myX=myX+(Math.cos(myAngle)*mySpeed);
    myY=myY+(Math.sin(myAngle)*mySpeed);
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX,(float)myY,(float)5,(float)5);
  }
}

class OddBallParticle extends Particle{
  OddBallParticle(){
    myX=myY=250;
    /*myX=mySpeed+myAngle;
    myY=mySpeed+myAngle;
    mySpeed=(int)(Math.random()*10);
    myAngle=(int)(Math.random()*Math.PI*20);*/
  }
  void move(){
    //myX=myX+(Math.cos(myAngle)*mySpeed);
    //myY=myY+(Math.sin(myAngle)*mySpeed);
    myY+=(int)(Math.random()*5)-2;
    myX+=(int)(Math.random()*5)-2;
  }
  void show(){
    noStroke();
    fill(myColor);
    rect((float)myX,(float)myY,(float)20,(float)20);
  }
}
void draw(){
  background(0);
  for(int i=0;i<parts.length;i++){
    parts[i].show();
    parts[i].move();
  }
 }
