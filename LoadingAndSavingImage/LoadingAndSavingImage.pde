PImage im;

void setup(){
  size(600,600);
  im = loadImage("lena.png");
  println("Width: "+im.width);
  println("Hight: "+im.height);
}

void draw(){
  background(0);
  image(im,0,0);
}

void mousePressed(){
  im.resize(im.width/2, im.height/2);
}

void keyTyped(){
  if( (key == 's') || (key=='S') ){
    println(savePath("LittleLena.png"));
    im.save(savePath("LittleLena.png"));
  }
  if( (key=='c') || (key=='C')){
    println("Saving Canvas...");
    saveFrame("lenaCanvas.png");
  }
}
