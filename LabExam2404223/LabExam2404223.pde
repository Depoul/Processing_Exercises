ArrayList<Rating> R;
ArrayList<SuperRating> sR;
void setup(){
  size(500,500);
  R = new ArrayList<Rating>();
  sR = new ArrayList<SuperRating>();
}

void draw(){
  background(0);
  for(Rating r:R)
    r.display();
  for(SuperRating sr:sR)
    sr.display();
  
}


void mousePressed(){
  if(mouseButton==LEFT){
    R.add(new Rating());
  }
  if(mouseButton==RIGHT){
    sR.add(new SuperRating());
  }
  
  
}

void keyPressed(){
  if( (key=='r') || (key=='R') ){
     R.clear(); 
     sR.clear();
  }
  
}
