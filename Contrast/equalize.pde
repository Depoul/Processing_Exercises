PImage equalize(PImage I){
  PImage R=I.copy();
  float [] H = istogram(I);
  
  //Cumulative istogram
  for(int i=1; i<256; i++){
    H[i] = H[i-1] + H[i];
  }
  
  R.loadPixels();
  
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i] = color(255*H[int(red(R.pixels[i]))]);
  }
  
  R.updatePixels();
  return R;
}
