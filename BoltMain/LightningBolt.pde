fclass LightningBolt extends Bolt{
  
  boolean isFlashOn;
  float lastFlashTime;
  
  LightningBolt(){
    super();
    isFlashOn = false;
    lastFlashTime = millis();
  }
  
  void display(){
    
    float flashInterval = 1000 / 5.0;
    
    if(millis() - lastFlashTime >= flashInterval){
      isFlashOn = !isFlashOn;
      lastFlashTime = millis();  //Refresh the last lamp time
    }
    
    if(isFlashOn){
      noStroke();
      fill(255);
      float rand = random(-5,+5);
      triangle(posX+rand,posY, posX+10+rand,posY, posX+10+rand, posY-40);
      triangle(posX+10+rand,posY, posX+20+rand,posY, posX+10+rand, posY+40);
    }
  }
  
}
