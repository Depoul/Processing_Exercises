PImage wow(PImage I){
  PImage R = I.copy();
  PImage tDx = I.get(2*I.width/3, 0, I.width/3, I.height); //The first coordinate is the starting pixel, the 3rd and 4th parameters are the width and the height of the rectangle to take
  PImage tSx = I.get(0,0,I.width/3, I.height);
  tDx.loadPixels();
  tSx.loadPixels();
  float f = random(0,2);
  float r,g,b;
  
  for(int i=0; i<tDx.pixels.length; i++){
    r = red(tDx.pixels[i]);
    g = green(tDx.pixels[i]);
    b = blue(tDx.pixels[i]);
    
    tDx.pixels[i] = color(r/f, g, b);
  }
  
  for(int i=0; i<tSx.pixels.length; i++){
    r = red(tSx.pixels[i]);
    g = green(tSx.pixels[i]);
    b = blue(tSx.pixels[i]);
    
    tSx.pixels[i] = color(r*f, g, b);
  }
  
  tDx.updatePixels();
  tSx.updatePixels();
  
  R.set(0,0,tDx);
  R.set(R.width/3*2,0,tSx);
  return R;
}
