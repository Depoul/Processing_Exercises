float x;
float y;
float v=10;
void setup(){
  size(500,500);
  x = width/2;
  y = height/2;
  noStroke();
}

void draw(){
  background(0);
  fill(255);
  x=x+random(-v, +v);
  y=y+random(-v, +v);
  ellipse(x, y, 50,50);
  
  
}
