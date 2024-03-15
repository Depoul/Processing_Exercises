
class Block{
  float posX, posY;
  float w, h;
  float sx;  
  int dir;
  
  Block(){
    this.posX = random(w,width-w);
    this.posY = random(0, height/2-h);
    this.w = 40;
    this.h = 60;
    this.sx = 4;
    this.dir = 1;
  }
  
  void move(){
    posX += sx * dir;
    if( (posX<=0) || (posX>=width) ){
      dir = -dir;
    }
  }
  
  void display(){
    noStroke();
    rectMode(CENTER);
    fill(0,255,0);
    rect(posX,posY,w,h);
  }
  
  void run(){
    display();
    move();
  }
}
