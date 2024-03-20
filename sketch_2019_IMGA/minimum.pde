PImage minimum(PImage I, int n){
  PImage R = createImage(I.width, I.height, RGB);
  PImage tmp;
  int off = n/2;
  float[] tmpF;
  int xs, ys;
  
  for(int x=0; x<I.width; x++){
    for(int y=0; y<I.height; y++){
      xs = x-off;
      ys = y-off;
      
      tmp = I.get( max(0,xs), max(0,ys), min(n, min(n+xs, I.width-xs)), min(n, min(n+ys, I.height-ys)));
      tmp.loadPixels();
      tmpF = new float[tmp.pixels.length];
      
      for(int i=0; i<tmp.pixels.length; i++){
        tmpF[i] = green(tmp.pixels[i]);
      }
      R.set(x,y, color(min(tmpF)));
    }
  }
  return R;
}
