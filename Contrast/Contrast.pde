PImage Im, Is, Ie;
float [] H1, H2, H3;

void setup(){
  background(0);
  size(1536,812);
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
  
  rectMode(CORNERS);
  noStroke();
  fill(255,255,0);
  for(int i=0; i<256; i++){
    rect(i*2, height-(H1[i]*256*100), i*2+2, height);
    rect(Im.width+i*2, height-(H2[i]*256*100), Im.width+i*2+2, height);
    rect(Im.width*2+i*2, height-(H3[i]*256*100), Im.width*2+i*2+2, height);
  }
}

void draw(){}
