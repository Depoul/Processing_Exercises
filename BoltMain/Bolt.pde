
class Bolt{
  float posX, posY;
  float speedY;
  
  
  Bolt(){
    this.posX = random(0,width-20);
    this.posY = -80;
    this.speedY = random(2,10);
  }
  
  void display(){
    noStroke();
    fill(255,255,0);
    triangle(posX,posY, posX+10,posY, posX+10, posY-40);
    triangle(posX+10,posY, posX+20,posY, posX+10, posY+40);
  }
  
  void move(){
    posX = random(posX-5, posX+5);
    posY = posY + 1 * speedY;
    
    if(posY>height+40){
      posY = -80;
    }
    
    if(posX<0){
      posX=0;
    }
    
    if(posX>width){
      posX=width;
    }
  }
  
  void run(){
    display();
    move();
  }
}
