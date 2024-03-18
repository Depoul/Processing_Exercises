PImage wow(PImage I){
  PImage R = I.copy();
  PImage upper = I.get(0,0,I.width, I.height/2);
  PImage lower = I.get(0,height/2, I.width, I.height/2);
  R.set(0,0,lower);
  R.set(0,height/2,upper);
  
  R.loadPixels();
  
  int x, y;
  for (int i = 0; i < R.width; i++) {
    x = R.width / 2 + i;
    y = R.height / 2 + i;
    if (x < R.width && y < R.height) {
      int index = x + y * R.width; // Calcola l'indice del pixel nell'array
      R.pixels[index] = color(255); // Imposta il colore del pixel a bianco
    }
  }
  
  updatePixels();
  return R;
  
}
