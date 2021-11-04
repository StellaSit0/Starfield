Particle[] parts = new Particle[1000];
//boolean start=false;
void setup(){
  //your code here
  noStroke();
  size(400,400);
  for(int i=0;i<parts.length;i++){
    parts[i]=new Particle();
  }
  //parts[0]=new OddBallParticle();
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
  int myX,myY,mySpeed, myAngle,mySize;
  int myColor;
  Particle(){
    myX=mySpeed+myAngle;
    myY=mySpeed+myAngle;
    mySpeed=(int)(Math.random()*2)+1;
    myAngle=(int)(Math.random()*3)+20;
    mySize=(int)(Math.random()*50);
    myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void move(){
    myX=myX+mySpeed;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse(myX,myY,mySize,mySize);
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
    ellipse(myX,myY,mySize,mySize);
  }
}

/*
Cloud[] c= new Cloud[10];
void setup() {
  size(500, 500);
  background(173, 216, 230);
  noStroke();
  for (int i = 0; i<10; i++) {
    c[i]=new StormCloud();
  }
  for (int i = 0; i < c.length; i++) {
    c[i]=new Cloud();
  }
}

class Cloud {
  int myWidth, myHeight, myX, myY;
  int myOpacity, mySpeed, myColor;
  Cloud() {
    myX=(int)(Math.random()*1100)-150;
    myY=(int)(Math.random()*200);
    myWidth=(int)(Math.random()*80)+80;
    myHeight=(int)(Math.random()*40)+20;
    myOpacity=(int)(Math.random()*100);
    mySpeed=(int)(Math.random()*2)+1;
    myColor=(int)(Math.random()*20)+236;
  }
  void show() {
    noStroke();
    fill(myColor, myOpacity);
    ellipse(myX, myY, myWidth, myHeight);
  }
  void drift() {
    myX=myX+mySpeed;
    if (myX>=950) {
      myX=-150;
    }
  }
}
class StormCloud extends Cloud {
  StormCloud() {
    myX=(int)(Math.random()*100)+300;
    myY=(int)(Math.random()*30)+40;
    myWidth=(int)(Math.random()*50);
    myHeight=(int)(Math.random()*20);
    myOpacity=(int)(Math.random()*100);
    mySpeed=1;
    myColor=0;
  }
}

void draw() {
  background(173, 216, 230);
  for (int i= 0; i < c.length; i++){
    c[i].show();
    c[i].drift();
  }
}
*/
