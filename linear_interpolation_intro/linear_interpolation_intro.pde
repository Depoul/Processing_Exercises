//Point coordinates
int x1 = 15;
int y1 = 10;
int x2 = 80;
int y2 = 90;

line (x1,y1,x2,y2);

//Linear interpolation (calculation of a new number starting from an interval and a percentage
//Important to calculate automatically the intermediate points 
  float x = lerp(x1,x2,i/10.0);
  float y = lerp(y1,y2,i/10.0);
  stroke(255,0,0);
  strokeWeight(5);
  point(x,y);
}
