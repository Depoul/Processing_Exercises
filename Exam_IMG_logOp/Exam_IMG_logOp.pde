PImage Im, Il, Ils;

void setup(){
  size(768,256);
  Im = loadImage("lena.png");
  Im.filter(GRAY);
  Im.resize(256,256);
  image(Im, 0, 0);
  Il = logOp(Im);
  image(Il, 256, 0);
  Ils = logOp(Im, int(random(10,70)), int(random(10,70)));
  image(Ils, 512, 0);
  
}

void draw(){
}

void keyPressed(){
  if(key=='r' || key=='R')
    setup();
}
