Block B1;
AmazingBlock B2;
void setup(){
  size(256,512);
  B1 = new Block();
  B2 = new AmazingBlock();
}

void draw(){
  background(0);
  B1.run();
  //stroke(255);
  //line(0,height/2, width, height/2);
  B2.run();
}

void keyPressed(){
  if(key=='r' || key=='R')
    setup();
}
