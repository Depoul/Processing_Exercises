PImage wow(PImage I){
  PImage R = I.copy();
  PImage terzodx = I.get(2*I.width/3, 0, I.width/3, I.height);
  PImage terzosx = I.get(0, 0, I.width/3, I.height);
  
  terzodx.loadPixels();
  terzosx.loadPixels();
  float f = (random(0,2));    //Random value asked by the text
  float r,g,b;
  //Changing red value of the left image pixels
  for(int i=0; i<terzosx.pixels.length; i++){
    r = red(terzosx.pixels[i]);
    g = green(terzosx.pixels[i]);
    b = blue(terzosx.pixels[i]);
    
    terzosx.pixels[i] = color(r*f, g, b);
  }
  //Changing red value of the right image pixels
  for(int i=0; i<terzodx.pixels.length; i++){
    r = red(terzodx.pixels[i]);
    g = green(terzodx.pixels[i]);
    b = blue(terzodx.pixels[i]);
    
    terzodx.pixels[i] = color(r/f, g, b);
  }
  //Updating output pixels
  terzosx.updatePixels();
  terzodx.updatePixels();
  //Placing the different slices in final position
  R.set(0,0,terzodx);
  R.set(2*I.width/3, 0, terzosx);
  return R;
}
