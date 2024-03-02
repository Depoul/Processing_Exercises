int pos=0;
int yc=0;
int b=255;
int v=10;
int dir=1;


void setup(){
  size(500,500);
  frameRate(60);
}

void draw(){
  background(b);
  line(pos,0,pos,height);
  pos+=v*dir;
  if(pos>=width || pos<0){
    dir=-dir;
  }
  ellipse(width/2, yc, 30, 30);
  if(yc>=height-15){
    yc=height-15;
  }
  if(yc<=15){
    yc=15;
  }
  yc+=v*dir;
}
