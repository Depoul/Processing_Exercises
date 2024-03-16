//We're gonna have a constant K = 75, which is the side of the square, and a numerical
//Code that identifies the desired puntual operation (0=negative, 1=logarithm, 2=gamma)

PImage applyOperator(PImage I, float x, float y, int k, int s){
  
  PImage res = I.copy();
  PImage tmp;
  
  tmp = I.get( int(x)-k/2, int(y)-k/2, k, k);
  
  switch(s){
    case 0: res.set( int(x)-k/2, int(y)-k/2, negativo(tmp)); break;
    case 1: res.set( int(x)-k/2, int(y)-k/2, logaritmo(tmp)); break;
    //case 2: res.set( (int)x-k/2, (int)y-k/2, gamma(tmp, 2)); break;
    case 2: res.set( int(x)-k/2, int(y)-k/2, gamma(tmp, 2)); break;
    default:;
  }
  return res;
}
