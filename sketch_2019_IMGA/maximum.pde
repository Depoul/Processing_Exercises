PImage maximum(PImage I, int n){
  PImage R = createImage(I.width, I.height, RGB);
  PImage tmp;
  float[] tmpF;
  int off = n/2;
  int sx, sy;
  
  for(int x=0; x<I.width; x++){
    for(int y=0; y<I.height; y++){
      sx = x-off;
      sy = y-off;
      tmp = I.get(max(0, sx), max(0,sy), min(n, min(n+sx, I.width-sx)), min(n, min(n+sy, I.height-sy)));
      tmp.loadPixels();
      tmpF = new float[tmp.pixels.length];
      for(int i=0; i<tmp.pixels.length; i++){
        tmpF[i] = green(tmp.pixels[i]);
      }
      R.set(x,y, color(max(tmpF)));
      R.updatePixels();
    }
  }
  return R;
}
 
