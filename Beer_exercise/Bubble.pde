class Bubble{
  float posX, posY;
  float sy;
  int r;
  
  Bubble(){
    this.posX = random(10, width-10);
    this.posY = height+20;
    this.sy = random(1,5);
    this.r = 5;
  }
  
  void display(){
    ellipseMode(RADIUS);
    noStroke();
    fill(255,255,0, 100);
    float off = random(-1,1);
    ellipse(posX+off, posY, r, r);
  }
  
  void move(){
    posY -= sy;
    if(posY <= -r)
      posY = height+r;
  }
  
  void run(){
    display();
    move();
  }
}
