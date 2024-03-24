PImage sBlock(PImage I, int h, float s){
  
  PImage R = I.copy();
  
  int x1 = int(random(0, I.width-h));
  int y1 = int(random(0, I.height-h));
  int x2 = int(random(0, I.width-h));
  int y2 = int(random(0, I.height-h));
  
  PImage s1 = I.get(x1,y1,h,h);
  PImage s2 = I.get(x2,y2,h,h);
  
  s1.loadPixels();
  for(int i=0; i<s1.pixels.length; i++){
    s1.pixels[i] = color(0,100,255);
  }
  s1.updatePixels();
  
  s2.loadPixels();
  for(int i=0; i<s2.pixels.length; i++){
    s2.pixels[i] = color(0,100,255);
  }
  s2.updatePixels();
  
  R.set(x1,y1,s1);
  R.set(x2,y2,s2);
  
  R.updatePixels();
  
  PImage Im = scale(R, s);
  
  return Im;
}
