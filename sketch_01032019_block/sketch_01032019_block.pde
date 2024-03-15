ArrayList<Block> B1;

void setup(){
  size(256,512);
  B1 = new ArrayList<Block>();
}

void draw(){
  background(0);
  B1.add(new Block());
  Block b1 = B1.get(0);
  b1.run();
  
  B1.add(new AmazingBlock());
  Block b2 = B1.get(1);
  b2.run();
  
}

void keyPressed(){
  if( (key=='r') || (key=='R')){
    setup();
  }
}
