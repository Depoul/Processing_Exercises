class AmazingBlock extends Block{
  float angle;
  float colorAngle;
  
  AmazingBlock(){
    super();
    this.angle=random(0,360);
    this.posX = random(w,width-w);
    this.posY = random(height/2+h/2, height-h/2);
    this.colorAngle = angle;
  }
  
  void display(){
    noStroke();
    rectMode(CENTER);
    fill(colorAngle%256, 255-colorAngle%256, 255);
    pushMatrix();
    translate(posX,posY);
    rotate(radians(angle));
    rect(0,0,w,h);
    popMatrix();
    angle+= 5;
  }
 
  
}
