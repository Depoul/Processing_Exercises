class HyperBall extends Ball{
  color c = color(0,0,255);
  boolean bool = false;
  
  HyperBall(){
    super();
    this.posX = random(width/2+R, width-R);
    this.posY = random(R, height-R);
  }
  
  
  
  void display(){
    noStroke();
    ellipseMode(CENTER);
    if(mouseInside()){
      if(!bool){
        c = color(random(255), random(255), random(255));
        bool = true;
      }
    }else{
      if(bool){
        c = color(0,0,255);
        bool = false;
      }
    }
    ellipse(posX, posY, 2*R, 2*R);
  }
  
  
  void updateColor() {
    if (mouseInside()) {
      if (!bool) { // Se il mouse è entrato da quando era fuori
        c = color(random(255), random(255), random(255)); // Cambia colore casualmente
        bool = true;
      }
    } else {
      if (bool) { // Se il mouse è uscito dopo essere stato dentro
        c = color(0, 0, 255); // Torna al colore originale
        bool = false;
      }
    }
  }
  
  boolean mouseInside(){
    return dist(mouseX, mouseY, posX, posY) < R;
  }
}
