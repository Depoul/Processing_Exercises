class LightningBolt extends Bolt{
  
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
      triangle(posX,posY, posX+10,posY, posX+10, posY-40);
      triangle(posX+10,posY, posX+20,posY, posX+10, posY+40);
    }
  }
  
}
