PImage Im, Iw;

void setup(){
  size(512,256);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  //image(Im, 0, 0);
  Iw = wow(Im);
  image(Im,0,0);
  image(Iw,Iw.width,0);
}

void draw(){}

void keyPressed(){
  if(key=='r' || key=='R')
    setup();
}
