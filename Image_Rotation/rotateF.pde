//Forward mapping rotation

PImage rotateF(PImage I, float theta)
{
  PImage R=createImage(I.width, I.height, RGB);
  
  R.loadPixels();
  for(int i=0; i<R.pixels.length;i++)
  {
    R.pixels[i]=color(0);
  }
  
  float x,y;
  float u1,v1;
  for(int u=0; u<I.width;u++)
  {
    for(int v=0; v<I.height;v++)
    {
      //Questa traslazione serve ad effettuare l'operazione rispetto al centro dell'immagine
      u1=u-I.width/2;
      v1=v-I.height/2;
      
      x=u1*cos(theta)-v1*sin(theta);
      y=u1*sin(theta)+v1*cos(theta);
      
      //Devo aggiustare le coordinate poiché il calcolo è avvenuto rispetto al centro
      x=x+I.width/2;
      y=y+I.height/2;
      
      R.set(round(x),round(y),I.get(u,v));
      
    }
  }
  
  return R;
}
