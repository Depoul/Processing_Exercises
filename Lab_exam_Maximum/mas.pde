PImage mas(PImage I, int n){
  PImage R = createImage(I.width, I.height, RGB);
  PImage tmp;
  int off=n/2;
  float[] tmpF;
  
  tmpF = new float[n*n];
  
  for(int x=0; x<I.width; x++){
    for(int y=0; y<I.height; y++){
      tmp=I.get(x-off,y-off,n,n);
      tmp.loadPixels();
      for(int i=0; i<tmp.pixels.length; i++){
        tmpF[i]=green(tmp.pixels[i]);
      }
      R.set(x,y,color(max(tmpF)));
    }
  }
  return R;
}
