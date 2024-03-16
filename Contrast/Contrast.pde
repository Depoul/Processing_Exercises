PImage Im, Is, Ie;
float [] H1, H2, H3;

void setup(){
  size(1536,512);
  Im = loadImage("lena.png");
  Im.filter(GRAY);
  
  Is = stretch(Im);
  Ie = equalize(Im);
  
  H1 = istogram(Im);
  H2 = istogram(Is);
  H3 = istogram(Ie);
  
  image(Im, 0, 0);
  image(Is, 512, 0);
  image(Ie, 1024, 0);
  
  for(int i=0; i<256; i++){
    println(i+": "+H1[i]+"\t\t\t"+H2[i]+"\t\t\t"+H3[i]);
  }
}

void draw(){}
