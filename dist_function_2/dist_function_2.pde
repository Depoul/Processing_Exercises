int d=40;

void setup(){
  size(500,600);
  noStroke();
  colorMode(RGB, width);
}

void draw(){
  background(0);
  for(int y=0; y<=height; y+=d){
    for(int x=0; x<=width; x+=d){
      if(dist(x,y,mouseX,mouseY) < d/2){
        fill(x,y,width);
      }
      else{
        fill(x,y,0);
      }
      ellipse(x,y,d,d);
    }
  }
}
