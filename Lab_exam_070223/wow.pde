PImage wow(PImage I){
  PImage R = createImage(I.width, I.height, RGB);
  PImage dx = I.get(I.width/2, 0, I.width/2, I.height);
  PImage sx = I.get(0, 0, I.width/2, I.height);
  R.set(0,0,dx);
  R.set(R.width/2,0,sx);
  
  float percent = random(0,100);
  float portion = (R.height * percent/100);
  
  PImage sup = R.get(0, 0, R.width, int(portion));
  PImage inf = R.get(0, int(portion), R.width, int(R.height-portion));
  
  float r,g,b;
  
  sup.loadPixels();
  inf.loadPixels();
  R.loadPixels();
  
  for(int i=0; i<sup.pixels.length; i++){
    r = red(sup.pixels[i]);
    g = green(sup.pixels[i]);
    b = blue(sup.pixels[i]);
    
    sup.pixels[i] = color(b,g,r);
  }
  
  for(int i=0; i<inf.pixels.length; i++){
    r = red(inf.pixels[i]);
    g = green(inf.pixels[i]);
    b = blue(inf.pixels[i]);
    
    inf.pixels[i] = color(r,b,g);
  }
  
  sup.updatePixels();
  inf.updatePixels();
  
  R.set(0,0,sup);
  R.set(0, int(portion), inf);
  println("Percentage = "+percent+" %");
  
  return R;
}
