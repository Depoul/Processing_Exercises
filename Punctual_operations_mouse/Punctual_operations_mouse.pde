PImage Im, Il;
int K=75;
int mode;
void setup(){
  Im=loadImage("lena.png");
  Il = Im.copy();
  size(512,512);
  image(Im, 0, 0);
  mode=0;
}

void draw(){
  image(Il, 0, 0);
  
  noFill();
  strokeWeight(3);
  stroke(0,255,0);
  rectMode(CENTER);
  
  rect(mouseX, mouseY, K, K);
}

void mousePressed(){
  Il = applyOperator(Il, mouseX, mouseY, K, mode);
}

void keyPressed(){
  if( key=='+' && K<511 ){
    K+=5;
  }
  if( key=='-' && K>3 ){
    K-=5;
  }
  if( key=='r' || key=='R' ){
    setup();
  }
  if(key=='0')
    mode = 0;
  if(key=='1')
    mode=1;
  if(key=='2')
    mode=2;
}
