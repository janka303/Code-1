class Pierog{
  PImage img;
  int x, y;
  int xVel, yVel;
  int w = 228; 
  int h = 181; 
  
  Pierog(){
    img = loadImage("pierog.png"); 
    x = int(random(0, width));
    y = int(random(0, height));
    xVel = int(random(-5, 15));
    yVel = int(random(-5, 15));
  }
  
  void drawPierog(){
    image(img, x, y);  
  }
  
  void bounce(){
    x += xVel; 
    y += yVel;
    
  }
  
  void checkEdges(){
    if(x+w/4>= width || x+w/4<= 0){
      xVel = -xVel;
    }
    
    if(y+h/8>= height || y+h/2<=0){
      yVel = -yVel;  
    }
  }
}