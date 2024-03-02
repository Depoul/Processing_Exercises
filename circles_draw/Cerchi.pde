void setup(){
  size(650,550);
  background(#FFFFFF);
 /* 
  ellipseMode(CENTER);
  
  ellipse(width/2, height/2, 550, 550);
  ellipse(width/2-25, height/2, 500, 500);
  ellipse(width/2-50, height/2, 450, 450);
  ellipse(width/2-75, height/2, 400, 400);
  ellipse(width/2-100, height/2, 350, 350);
  ellipse(width/2-125, height/2, 300, 300);
  ellipse(width/2-150, height/2, 250, 250);
  ellipse(width/2-175, height/2, 200, 200);
  ellipse(width/2-200, height/2, 150, 150);
  ellipse(width/2-225, height/2, 100, 100);
  ellipse(width/2-250, height/2, 50, 50);
  rect(0, height/2, width, 1);
  */
  
  int a;
  int c=50;
  
  ellipseMode(CENTER);
  for (a=100; a<width-300; a = a+25){
      fill(255,255,255,1);
      ellipse( a, height/2, c, c);
      c = c + 50;
  }
  rect(0, height/2, width, 1);
}
