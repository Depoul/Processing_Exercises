PImage Im, Iw, Imax;
int n;
void setup(){
  size(768,256);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  Im.filter(GRAY);
  Iw = wow(Im);
  image(Im, 0, 0);
  image(Iw, 256, 0);
  n = int(random(5,15));
  Imax = mas(Iw, n);
  image(Imax,512,0);
}

void draw(){}


void keyPressed(){
  if( key=='r' || key=='R')
    setup();
}
