PImage sBlock(PImage I, int h){
  
  PImage R = I.copy();
  
  int a = int(random(h, I.width-h));
  int b = int(random(h, I.height-h));
  int c = int(random(h, I.width-h));
  int d = int(random(h, I.height-h));
  
  PImage s1 = get(a,b,h,h);
  PImage s2 = get(c,d,h,h);
  
  s1.loadPixels();
  for(int i=0; i<s1.pixels.length; i++){
    s1.pixels[i] = color(0,128,255);
  }
  
  s2.loadPixels();
  for(int i=0; i<s2.pixels.length; i++){
    s2.pixels[i] = color(0,150,255);
  }
  s1.updatePixels();
  s2.updatePixels();
  R.updatePixels();
  
  R.set(a,b,s1);
  R.set(c,d,s2);
  
  return R;
}

PImage sBlock(PImage I, int h, float s){
  
  PImage R = I.copy();
  
  int a = int(random(h, I.width-h));
  int b = int(random(h, I.height-h));
  int c = int(random(h, I.width-h));
  int d = int(random(h, I.height-h));
  
  PImage s1 = get(a,b,h,h);
  PImage s2 = get(c,d,h,h);
  
  s1.loadPixels();
  for(int i=0; i<s1.pixels.length; i++){
    s1.pixels[i] = color(0,128,255);
  }
  
  s2.loadPixels();
  for(int i=0; i<s2.pixels.length; i++){
    s2.pixels[i] = color(0,150,255);
  }
  s1.updatePixels();
  s2.updatePixels();
  R.updatePixels();
  R.set(a,b,s1);
  R.set(c,d,s2);
  
  PImage Im = scaleF(R, s);
  
  return Im;
  
}
