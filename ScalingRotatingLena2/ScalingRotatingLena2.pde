PImage Im, Is, Is2, Is3;

void setup(){
  size(768+256,256);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  image(Im, 0, 0);
  Is = sBlock(Im, int(random(10,80)));
  image(Is, 256, 0);
  Is2 = sBlock(Im, int(random(10,80)), random(0.5, 1.5));
  image(Is2, 512, 0);
  Is3 = sBlockRotate(Im, int(random(10,80)), random(0,360));
  image(Is3, 512+256, 0);
}

void draw(){}

void keyPressed(){
  if(key=='r' || key=='R')
    setup();
}
