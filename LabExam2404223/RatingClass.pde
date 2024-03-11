class Rating{
  float posX, posY;  //Position
  float speedX;      //Speed
  int dir;           //Direction. 1= left to right.  -1 = right to left
  int number;
  
  Rating(){
    this.posX = random(0, width-30);
    this.posY = random(0, height-30);
    this.speedX = random(2,4);
    this.dir = 1;
    this.number = int(random(18,30));
  }
  
  void display(){
    stroke(255,255,0);
    noFill();
    rect(posX,posY,30,30);
    textSize(28);
    text(number, posX, posY+25);
    
    if( (posX>width-30) || (posX<0))
      dir = -dir;
      
     posX += speedX * dir;
  }
  
}


class SuperRating extends Rating{
  SuperRating(){
    super();
    this.speedX = 0;
  }
  
  void display(){
    stroke(255);
    noFill();
    rect(posX,posY,30,30);
    textSize(28);
    text(number, posX, posY+25);
    
    if(number > 24){
      text("LODE", posX, posY+50);
    }
    
      
  }
  
  
}
