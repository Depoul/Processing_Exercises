PImage Im, Ir, Iri;
int ang=0;
void setup(){
  Im = loadImage("lena.png");
  size(1025,512);
  
  Ir = rotateF(Im, radians(ang));
  Iri = rotateI(Im, radians(ang));
  
  image(Ir, 0, 0);
  image(Iri, 0, 0);
}

void draw(){}
