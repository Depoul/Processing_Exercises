float speed = 0;    //Speed Variable
float gravity = 0.1;    //Gravity variable
float x = 240;//x coordinate of the square
float y = 10;      //y coordinate of the square

void setup(){
  size(480,270);
}

void draw(){
  background(255);
  rectMode(CENTER);
  fill(0);
  stroke(0,0,255);
  rect(x,y,20,20);
  y = y + speed;
  speed = speed + gravity;
  
  if(y > height-10){
    speed = speed * -0.95;
    y=height-10;
  }
}
