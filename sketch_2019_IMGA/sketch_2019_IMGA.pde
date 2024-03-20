PImage Im, Ih, Ihm;

void setup(){
  size(768,256);
  Im = loadImage("lena.png");
  Im.filter(GRAY);
  Im.resize(256,256);
  int h = int(random(1,256));
  int k = int(random(1,256));
  int n = int(random(3,11));
  Ih = Hash(Im, h, k);
  Ihm = Hash(Im, h, k, n);
  image(Im, 0, 0);
  image(Ih, 256,0);
  image(Ihm, 512,0);
  
}

void draw(){
  
  
}

void keyPressed(){
  if(key=='r' || key=='R')
    setup();
}
