PImage max(PImage I, int N){
  PImage R = createImage(I.width, I.height, RGB);
  PImage temp;
  int off = N/2;
  float[] tempF = new float[N*N];
  
  for(int x=0; x<I.width; x++){
    for(int y=0; y<I.height; y++){
      
      temp = I.get(x-off, y-off, N, N);
      temp.loadPixels();
      
      for(int i=0; i<temp.pixels.length; i++){
        tempF[i] = green(temp.pixels[i]);
      }
      R.set(x,y,color(max(tempF)));
    }
  }
  R.updatePixels();
  return R;
}
