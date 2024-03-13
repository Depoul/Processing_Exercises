ArrayList<Bolt> B1;

void setup(){
  size(500,500);
  B1 = new ArrayList<Bolt>();
  
}

void draw(){
  background(0);
  
  for(Bolt b:B1){
    b.run();
  }
  
}

void mousePressed(){
  if(mouseButton==LEFT){
    B1.add(new Bolt());
  }
  if(mouseButton==RIGHT){
    B1.add(new LightningBolt());
  }
}

void keyPressed(){
  if( (key=='R') || (key=='r')){
    setup();
  }
}
