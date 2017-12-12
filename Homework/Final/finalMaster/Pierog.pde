class Pierog{
  PImage img;
  int x, y;
  int xVel, yVel;
  int w = 228; 
  int h = 181; 
  boolean toshow;
  int s = 150;
  
  Pierog(){
    toshow = true;
    img = loadImage("pierog.png"); 
    x = int(random(0, width));
    y = int(random(0, height));
    xVel = int(random(-5, 15));
    yVel = int(random(-5, 15));
    
  }
  
  void drawPierog(){
    if (toshow){
      image(img, x, y,s,s);  
    }
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
  
  void notshow(){
    toshow=false;
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
}