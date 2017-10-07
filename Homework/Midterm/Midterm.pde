float xPos, yPos;
float xVel, yVel;
int radius = 100;
boolean buttonClicked;
int x; 
int y; 
float dist; 
String text1, text2, text3, text4;

void setup(){
    size(1500, 1500); 
    x = width/2; 
    y = height/2; 
  
}

void draw(){
  
goodBall(width/2, height/2);

  if (buttonClicked){
    goodBall(mouseX, mouseY);
  }
  
  xPos = xPos + xVel;
  yPos = yPos + yVel;
  
  if(xPos > width  - radius/2 || xPos < 0 + radius/2){
    xVel = xVel*-1;

  }
  if (yPos > height - radius/2 || yPos < 0 + radius/2){
    yVel = yVel*-1;
  }
}

void goodBall(int x, int y){
   background(0);
   fill(#8DFAB4);
   ellipse(x, y, radius, radius);
}

void badBall(){
  
}

void mousePressed(){
   if (calcDistance(x, y) <= 50) {
    buttonClicked = !buttonClicked;
  }
}

float calcDistance(int xPos, int yPos) {
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}