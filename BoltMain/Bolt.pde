
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
    float rand = random(-5,5);
    triangle(posX+rand,posY, posX+10+rand,posY, posX+10+rand, posY-40);
    triangle(posX+10+rand,posY, posX+20+rand,posY, posX+10+rand, posY+40);
  }
  
  void move(){
    
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
