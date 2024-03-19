Pillow b1, b2;

void setup(){
  size(256,512);
  b1 = new Pillow();
  b2 = new SuperPillow();
  
}

void draw(){
  background(0);
  b1.run();
  stroke(255);
  line(0,height/2, width, height/2); 
  b2.run();
  if(b2 instanceof SuperPillow){
    SuperPillow superP = (SuperPillow) b2;
    if(superP.checkMouseOver()){
      superP.rotatePillow();
    }
  }
}

void keyPressed(){
  if(key=='r' || key=='R'){
    setup();
  }
}
