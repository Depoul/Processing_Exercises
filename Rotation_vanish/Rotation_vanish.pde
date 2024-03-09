float rotAngle = 10; //Angle of rotation
void setup(){
  size(600,600);
}

void draw(){
  //Semi transparent rectangle background added every frame
  frameRate(10);
  fill(255,50);    //Semi transparent
  rect(0,0,width,height);  //Backgrpund
  
  translate(width/2, height/2); //Moves the grid to the center
  rotate(radians(rotAngle)); //Rotates the grid clockwise
  noStroke();
  fill(255,0,0); //Red
  ellipse(250,0,20,20);
  
  rotAngle+=10;
}
