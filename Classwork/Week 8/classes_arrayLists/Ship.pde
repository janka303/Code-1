class Ship{
  //variables
  color col;
  int xVel;
  float yVel;
  int rate;
  int xPos, yPos;
  
  //constructor
  Ship(){
    col = color(random(0,10), random(140, 255), random(80, 150));
    xVel = int(random(5,20));
    yVel = int(random(1, 2));
    rate = int(random(5,20));
    xPos = int(random(0, width));
    yPos = int(random(0, height));
  }
  
  void drawShip(){
    fill(col);
    
    ellipse(xPos, yPos, 50, 20);
    ellipse(xPos, yPos-10, 20, 20);
  }
  
  void floatShip(){
    xPos += xVel;
    yPos += int(sin(frameCount/rate) * 10);
    
    if(xPos > width && xVel > 0){
      xPos = -20; 
    }
  }
}