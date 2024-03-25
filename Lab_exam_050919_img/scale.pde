  //scaling with forward mapping
PImage scaleF(PImage I, float s){
  PImage R = createImage(I.width, I.height, RGB);
  R.loadPixels();
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i]=color(0);
  }
  float x,y;
  float u1,v1;
  for(int u=0; u<I.width; u++){
    for(int v=0; v<I.height; v++){
      u1 = u-I.width/2;
      v1 = v-I.height/2
      x = u1*s;
      y = v1*s;
      x = x+I.width/2;
      y = y+I.height/2;
      R.set(round(x), round(y), I.get(u,v));
    }
  }
  return R;
}
