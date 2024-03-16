PImage stretch(PImage I){
  PImage R = I.copy();
  float max, min;
  R.loadPixels();
  max = red(R.pixels[0]);
  min = red(R.pixels[0]);
  
  for(int i=0; i<R.pixels.length; i++){
    if(red(R.pixels[i])<min){
      min = red(R.pixels[i]);
    }
    if(red(R.pixels[i])>max){
      max = red(R.pixels[i]);
    }
  }
  
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i] = color(255*(red(R.pixels[i])-min)/(max-min));
  }
  R.updatePixels();
  return R;
}
