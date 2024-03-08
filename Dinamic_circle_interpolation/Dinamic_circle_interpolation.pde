float x;
float y;

void setup(){
  size(500,500);
  noStroke();
}

void draw(){
  fill(0,25); //Setting a black background with 25 transparency
  rect(0,0,width,height);
  fill(255);
  x = lerp(x, mouseX, 0.05);
  y = lerp(y, mouseY, 0.05);
  ellipse(x, y, 50,50);
  
  
}
