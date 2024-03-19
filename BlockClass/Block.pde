
class Block{
  float posX,posY;
  int w, h;
  float sx;
  int dir;
  
  Block(){
    this.w = 40;
    this.h = 60;
    this.posX = random(0, width);
    this.posY = random(h/2, height/2-h/2);
    this.sx = 4;
    this.dir = 1;
  }
  
  void move(){
    posX += sx*dir;
    if(posX<=0 || posX>=width)
      dir = -dir;
  }
  
  void display(){
    rectMode(CENTER);
    noStroke();
    fill(0,255,0);
    rect(posX, posY, w, h);
  }
  
  void run(){
    display();
    move();
  }
  
  
  
}
