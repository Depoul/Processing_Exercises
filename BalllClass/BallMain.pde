ArrayList<Ball> abs;

void setup(){
  background(0);
  size(1000,500);
  abs = new ArrayList<Ball>();
  frameRate(200);
}

void draw(){
  
  fill(0,40); //Background with transparency
  rect(0,0,width, height);
  
  for(Ball b:abs)
    b.run();
}

void keyPressed(){
  if( (key=='N') || (key=='n') )
    abs.add(new Ball(random(50,450), random(50,450), random(25,70), random(1,10), random(1,10)));
}
