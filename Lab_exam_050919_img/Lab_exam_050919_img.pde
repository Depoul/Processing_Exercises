PImage Im, Ib, Is;

void setup(){
  size(768,256);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  int h = int(random(10,80));
  Ib = sBlock(Im, h);
  float s = random(0.5, 1.5);
  Is = sBlock(Im, h, s);
  image(Im, 0, 0);
  image(Ib, Ib.width, 0);
  image(Is, Is.width*2, 0);
}

void draw(){}

void keyPressed(){
  if(key=='r' || key=='R')
    setup();
}
