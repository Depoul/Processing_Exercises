
void setup(){
  size(500,500);
  stroke(0);
  strokeWeight(10);
  background(255);
}

void draw(){

  if(mousePressed){
    line(pmouseX, pmouseY, mouseX, mouseY);
    
  }
}

void keyPressed(){
  if( key=='c' || key == 'C'){
    background(255);
  }
  if( key=='r' || key == 'R'){
    stroke(255,0,0);
  }
  if( key=='g' || key == 'G'){
    stroke(0,255,0);
  }
  if( key=='b' || key == 'B'){
    stroke(0,0,255);
  }
}
