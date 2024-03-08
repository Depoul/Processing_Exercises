int x = 100;

void setup(){
  size(500,500);
}

void draw(){
  background(0);
  if(keyPressed && key==CODED){
    if(keyCode==LEFT){
      x-=5;
    }
    if(keyCode==RIGHT){
      x+=5;
    }
    
  }
  rect(x, height/2, 50, 50);
}
