void setup(){

  size(500,500);
  background(0,255,0);
  int l=50;
  
  for(int y=0; y<height; y+=l)
  { 
    for(int x=0; x<width; x+=l)
    {
      fill(0,random(255),0);
      rect(x+random(-5,5),y+random(-5,5),l,l);
    } 
  }
}

void draw(){
/* 
    if(mousePressed)
    {
      if(mouseButton==LEFT)
      {
        println("L");
      }
      if(mouseButton==RIGHT)
      {
        println("R");
      }
      if(mouseButton==CENTER)
      {
        println("C");
      }
    }
*/
     if(keyPressed)
    {
      if(key=='a' || key =='A')
      {
        println("Hai premuto  la 'A'");
      }
      if(key=='b' || key == 'B')
      {
        println("Hai premuto la 'B'");
      }
      if(key == CODED) //Per i tasti speciali quali frecce, shift ecc ecc...
      {
        if(keyCode==LEFT)
        println("Hai premuto la freccia sinistra");
      }
    }
}
void mousePressed(){
  setup();
}
