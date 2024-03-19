class SuperPillow extends Pillow{
  int angle;
  
  SuperPillow(){
    super();
    this.angle = int(random(0,360));
    this.posX = random(this.w/2, width-w/2);
    this.posY = random(height/2+h/2, height-h/2);
  }
  
  void display(){
    
    pushMatrix();
    translate(posX, posY);
    rotate(radians(angle));

    rectMode(CENTER);
    noStroke();
    fill(255);
    rect(0, 0, w, h);
    ellipseMode(CENTER);
    fill(125);
    ellipse(0, 0, w, w);
    
    popMatrix();
  }
  
  void rotatePillow(){
    angle += 5;
  }
  
  boolean checkMouseOver(){
    
    float distance = dist(posX, posY, mouseX, mouseY);
    
    if(distance < w/2){
      return true;
    }
    else{
      return false;
    }
  }

}
