class Smile{
  float posX, posY;
  float speedX;
  int dir =1;
  float r;
  float angle;
  
  Smile(){
    this.posX = random(r,width-r);
    this.posY = random(r,height-r);
    this.speedX = 5;
    this.r = 30;
  }
  
  void display(){
    ellipseMode(RADIUS);
    pushMatrix();
    translate(posX,posY);
    rotate(radians(angle));
    noFill();
    stroke(255,255,0);
    ellipse(0, 0, r, r);
    fill(255,255,0);
    ellipse(0-10, 0-10, 5, 5);
    ellipse(0+10, 0-10, 5, 5);
    noFill();
    strokeWeight(1.2);
    arc(0, 0+8, 15, 10, 0, PI);
    popMatrix();
  }
  
  void move(){
    posX+= speedX * dir;
    angle+=5;
    if(posX>width || posX<0)
      dir = -dir;
  }
  
  
  void run(){
    display();
    move();
  }
}
    
