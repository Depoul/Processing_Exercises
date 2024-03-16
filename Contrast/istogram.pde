
float [] istogram(PImage I){
  float[] H= new float[256];
  for(int i=0; i<256; i++){
    H[i]=0;
  }
  
  I.loadPixels();
  
  for(int i=0; i<I.pixels.length; i++){
    H[int(red(I.pixels[i]))]++;
  }
  
  for(int i=0; i<256; i++){
    H[i] = H[i]/I.pixels.length;
  }
  
  return H;
}
