int dir = 1; //Direzione
int v=4; //Velocità
int r=40; //Raggio del cerchio
int x=r; //Centro dell'arco
int a=30; //Angolo dell'arco della bocca di pacman
int dira=-1; //Direzione del variare dell'angolo
int va=v/2; //Velocità apertura bocca in relazione con la velocità del cerchio.

void setup(){
  size(800,300);
  ellipseMode(RADIUS);
}

void draw(){
  background(0);
  fill(255,255,0);
  if(dir==1)
    arc(x,height/2, r, r, radians(a), radians(360-a));
  else
    arc(x, height/2, r, r, radians(180+a), radians(360+180-a));
    
  if(x>=width-r || x<r)
    dir = -dir;
    
   x+=dir*v;
   
   fill(0);
   ellipse(x, height/2-20, 3, 3);
   
   a += dira*va;
   
   if(a<0 || a>30)
     dira = -dira; 
  
}
