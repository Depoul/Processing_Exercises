PImage Im, Ig;

void setup(){
  size(768,256);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  image(Im,0,0);
  Ig = imToGray(Im);
  image(Ig, 256,0);
}

PImage imToGray(PImage I){
  PImage R = createImage(I.width, I.height, RGB);
  R.filter(GRAY);
  R.loadPixels();
  I.loadPixels();
  for(int i=0; i<R.pixels.length; i++){
    int r = int(red(I.pixels[i]) * 0.5);
    int g = int(green(I.pixels[i])*0.5);
    int b = int(blue(I.pixels[i])*0.5);
    R.pixels[i] = r+g+b;
  }
  R.updatePixels();
  return R;
}
