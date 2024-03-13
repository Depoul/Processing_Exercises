

class Number{
  int value;
  float posX, posY;
  float speedY;
  int dir;
  
  Number(int v){
    this.value = v;
    this.posX = random(10,width-10);
    this.posY = -10;
    this.speedY = random(2,10);
    this.dir = 1;
  }
  
  void display(){
    textSize(32);
    fill(255,255,0);
    text(this.value,posX,posY);
  }
  
  void move(){
    posY = posY + speedY;
    if(posY>width){
      posY = 0;
    }
  }
}
