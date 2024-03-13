ArrayList<Number> N1;

void setup(){
  size(500,500);
  N1 = new ArrayList<Number>();
}

void draw(){
  background(0);
  
  for(Number n:N1){
    n.display();
    n.move();
  }
  
}

void keyPressed(){
    switch(key){
      case '0': 
        N1.add(new Number(0));
        break;
      case '1': 
        N1.add(new Number(1));
        break;
      case '2': 
        N1.add(new Number(2));
        break;
      case '3': 
        N1.add(new Number(3));
        break;
      case '4': 
        N1.add(new Number(4));
        break;
      case '5': 
        N1.add(new RareNumber(5));
        break;
      case '6': 
        N1.add(new RareNumber(6));
        break;
      case '7': 
        N1.add(new RareNumber(7));
        break;
      case '8': 
        N1.add(new RareNumber(8));
        break;
      case '9': 
        N1.add(new RareNumber(9));
        break;
    }
  
}

void mousePressed(){
  if(mouseButton==RIGHT)
    setup();
}
