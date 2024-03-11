
ArrayList<House> hl;
ArrayList<LittleHouse> hll;

void setup(){
  size(500,500);  
  
  hl = new ArrayList<House>();
  hll = new ArrayList<LittleHouse>();
}

void draw(){
  background(0);
  
  
  for(House h:hl)
      h.display();
  for(LittleHouse hll:hll)
      hll.display();
  
  //hl.get(0).posX++;
  
}


void mousePressed(){
  if(mouseButton==LEFT){
    hl.add(new House());
  }  
  if(mouseButton==RIGHT){
    hll.add(new LittleHouse());
  }
}

void keyPressed(){
  if( (key=='r') || (key=='R') ){
    hl.clear();
    hll.clear();
  }
}
