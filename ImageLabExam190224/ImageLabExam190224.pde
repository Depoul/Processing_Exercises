PImage Im, Ig, Ib;

void setup(){
  size(768,256);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  image(Im,0,0);
  Ig = imToGray(Im);
  image(Ig, 256,0);
  image(estraiPianoN(Ig,1),512,0);
}

PImage imToGray(PImage I){
  PImage R = createImage(I.width, I.height, RGB);
  //PImage R = I.copy();
  //R.loadPixels();
  //I.loadPixels();
  for(int i=0; i<R.pixels.length; i++){
    
    int r = (int) red(I.pixels[i]);
    int g = (int) green(I.pixels[i]);
    int b = (int) blue(I.pixels[i]);
    float x = r*0.5 + g*0.5 + b*0.5;
    R.pixels[i] = color(x);
  }
  R.updatePixels();
  return R;
}

PImage estraiPianoN(PImage I, int n){
  PImage R = bitplane(I, n);
  return R;
}

PImage bitplane(PImage I, int n){
  PImage R = I.copy();
  R.loadPixels();
  
  int x;
  int r;
  for(int i=0; i<R.pixels.length; i++){
    x = int(blue(R.pixels[i]));
    r = (x>>n)&1;
    
    R.pixels[i] = color(255*r);
  }
  R.updatePixels();
  return R;
}

void keyPressed(){
  if(key == '1'){
    image(estraiPianoN(Ig, 1),512, 0);
  }
  if(key =='2'){
    Ib = estraiPianoN(Ig, 2);
    image(Ib,512, 0);
  }
  if(key == '3'){
    Ib = estraiPianoN(Ig, 3);
    image(Ib,512, 0);
  }
}
