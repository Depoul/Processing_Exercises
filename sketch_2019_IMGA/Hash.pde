PImage Hash(PImage I, int h, int k){
  PImage R = I.copy();
  
  for(int x=0; x<I.width; x++){
    for(int y=0; y<I.height; y++){
      if(x==h || x==k){
        R.set(x,y,color(0));
      }
      if(y==h || y==k){
        R.set(x,y,color(0));
      }
    }
  }
  return R;
}

PImage Hash(PImage I, int h, int k, int n){
  PImage R = I.copy();
  
  R = median(R, n);
  
  
  for(int x=0; x<I.width; x++){
    for(int y=0; y<I.height; y++){
      if(x==h || x==k){
        R.set(x,y,color(0));
      }
      if(y==h || y==k){
        R.set(x,y,color(0));
      }
    }
  }
  return R;
}
