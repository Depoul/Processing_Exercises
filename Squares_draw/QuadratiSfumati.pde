color c = 255;
color t = 60;
size(500,500);
background(0);
noStroke();

for(int x=0; x<=width/2; x+=width/20){
  fill(c,t);
  rect(x,x,width/2, height/2);
}
