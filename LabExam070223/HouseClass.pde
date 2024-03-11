class House{
  float posX;  // x-axis position
  float posY;
  float speed;  //x-axis speed
  int dir;  //Direction
  
  House(){
    this.posX = random(35, width-35);
    this.posY = random(0, height-30);
    this.speed = random(2,10);
    this.dir = 1;
    
  }
  
  void display(){
    
    stroke(255,255,0);
    noFill();
    rect(posX, posY, 30, 30);
    triangle(posX-5, posY, posX+15, posY-10, posX+35, posY);
    posX+=speed*dir;
    if( (posX > width-35) || (posX<35)){
      dir = -dir;
    }
  } 
}

class LittleHouse extends House{
  LittleHouse(){
    super();
    this.dir = -1;
  }
  
  void display(){
    stroke(255);
    noFill();
    rect(posX, posY, 30, 30);
    rect(posX+10, posY+20, 10,10);
    triangle(posX-5, posY, posX+15, posY-10, posX+35, posY);
    posX+=speed*dir;
    if(posX < -30){
      posX = width;
    }
  }
}
    
