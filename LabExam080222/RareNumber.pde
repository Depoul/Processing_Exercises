class RareNumber extends Number{
  
  RareNumber(int v){
    super(v);
    this.dir = -1;
  }
  
  void display(){
    textSize(32);
    fill(255);
    text(this.value,posX,posY);
    ellipseMode(CENTER);
    noFill();
    stroke(255);
    ellipse(posX+8,posY-10,32,32);
  }
  
  void move(){
    posY = posY + speedY * dir;
    if(posY < 0){
      posY = width;
    }
  }
}
