class Ball{
  float posX, posY;
  float R;
  float sy = 5;
  int dir = 1;
  
  Ball(){
    this.R = 40;
    this.posX = random(R, width/2-R);
    this.posY = random(R, height-R);
  }
  
  void display(){
    noStroke();
    fill(255,0,0);
    ellipseMode(CENTER);
    ellipse(posX, posY, 2*R, 2*R);
  }
  
  void move(){
    posY += sy * dir;
    if(posY<0 || posY>height)
      dir = -dir;
  }
  
  void run(){
    display();
    move();
  }
}
  
  
