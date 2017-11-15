class Flag{
  PVector position;
  
  Flag(){
    position = new PVector(mouseX, mouseY);
    
  }
  
  void display(){
    noCursor();
    stroke(255, 200, 0);
    strokeWeight(3);
    noFill();
    rect(mouseX, mouseY, 20, 20);
    line(mouseX, mouseY+10, mouseX, mouseY+25);
  }
  
  void flagWave(){
    for(int x = 0; x < width; x++){
      image(img.get(x,0,1,img.height), x, 20*sin(radians(x+millis()))); 
  }
}