ArrayList<Bubble> B;

void setup(){
  size(512,512);
  B = new ArrayList<Bubble>();
}

void draw(){
  background(#D6B437);
  for(Bubble b:B)
    b.run();
}

void keyPressed(){
  if(key=='r' || key=='R')
    setup();
}

void mousePressed(){
  if(mouseButton==LEFT || mouseButton==RIGHT)
    B.add(new Bubble());
}
  
