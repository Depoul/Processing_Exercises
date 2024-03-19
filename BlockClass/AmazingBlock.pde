class AmazingBlock extends Block{
  float angle;
  
  AmazingBlock(){
    this.angle = random(0,360);
    this.posX = random(0, width);
    this.posY = random(height/2+h/2, height-h/2);
  }
  
  void display(){
    pushMatrix();
    rectMode(CENTER);
    noStroke();
    fill(angle%256,255-angle%256,255);
    translate(posX, posY);
    rotate(radians(angle));
    rect(0,0, w, h);
    popMatrix();
  }
  
  void move(){
    posX += sx*dir;
    if(posX<=0 || posX>=width)
      dir = -dir;
    angle+=5;
  }
  
}
