ArrayList<Ball> B;

void setup(){
  size(512,256);
  B = new ArrayList<Ball>();
  B.add(new Ball());
  B.add(new HyperBall());
}

void draw(){
  background(0);
  for(Ball b:B)
    b.run();
}

void keyPressed(){
  if(key=='r' || key=='R')
    setup();
}
