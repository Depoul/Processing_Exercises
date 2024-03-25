ArrayList<Palla> P;
ArrayList<Smile> S;
void setup(){
  size(512,768);
  P = new ArrayList<Palla>();
  S = new ArrayList<Smile>();
}

void draw(){
  background(0);
  for(Palla p:P){
    p.run();
  }
  for(Smile s:S){
    s.display();
    s.move();
  }
}

void mousePressed(){
  if(mouseButton==LEFT){
    P.add(new Palla());
  }
  if(mouseButton==RIGHT){
    S.add(new Smile());
  }
}
