class Pillow{
  float posX, posY;
  int w, h;
  float sx;
  int dir;
  
  Pillow(){
    this.w = 40;
    this.h = 80;
    this.posX = random(this.w/2, width-w/2);
    this.posY = random(h/2, height/2-h/2);
    this.sx = 2;
    this.dir = 1;
  }
  
  void move(){
    posX += sx*dir;
    if(posX<=0 || posX>=width){
      dir = -dir;
    }
  }
  
  void display(){
    rectMode(CENTER);
    noStroke();
    fill(255);
    rect(posX, posY, w, h);
  }
  
  void run(){
    display();
    move();
  }
  
}
