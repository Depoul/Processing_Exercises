PImage logOp(PImage I){
  PImage R = createImage(I.width, I.height, RGB);
  
  float r;
  float C = 255/log(256);
  
  I.loadPixels();
  R.loadPixels();
  
  for(int i=0; i<I.pixels.length; i++){
    r = C*log(red(I.pixels[i]));
    R.pixels[i] = color(r);
  }
  R.updatePixels();
  return R;
}

PImage logOp(PImage I, int h, int k){
  PImage R = createImage(I.width, I.height, RGB);
  
  float r;
  float C = 255/log(256);
  int x = int(random(0, I.width-h));
  int y = int(random(0, I.height-k));
  PImage square = I.get(x, y, h, k);
  square.loadPixels();
  for(int i=0; i<square.pixels.length; i++){
    square.pixels[i] = color(0);
  }
  square.updatePixels();
  
  I.set(x,y,square);
  
  
  I.loadPixels();
  R.loadPixels();
  for(int i=0; i<I.pixels.length; i++){
    r = C*log(red(I.pixels[i]));
    R.pixels[i] = color(r);
  }
  R.updatePixels();
  return R;
  
}
