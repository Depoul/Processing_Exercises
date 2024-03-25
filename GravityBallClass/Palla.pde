class Palla{
  float posX, posY;
  float r;
  color c;
  float speedY;
  float gravity=0.1;
  
  Palla(){
    this.r = 20;
    this.posX = random(r, width-r);
    this.posY = -r*2;
    this.c = color(random(0,255), random(0,255), random(0,255));
    this.speedY = 0;
  }
  
  void display(){
    ellipseMode(RADIUS);
    noStroke();
    fill(c);
    ellipse(posX, posY, r, r);
  }
  
  void move(){
    posY += speedY;
    speedY += gravity;
    if(posY>height-r){
      speedY = speedY * (-0.8);
      posY = height-r;
    }
  }
  
  void run(){
    display();
    move();
  }
}
