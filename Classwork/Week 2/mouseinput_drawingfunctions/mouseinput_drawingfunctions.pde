//mouse input and drawing functions
color c;
int xPos, yPos;
int xVel;
int size;

void setup(){
  size(1000,1000);
  smooth();
  background(255);
  xVel = 10;
}

void draw(){
  //c = color(random(255), random(255), random(255));
  //drawShip(c, mouseX, mouseY, 30);
  
  //if(mousePressed){
  //  c = color(random(255), random(255), random(255));
  //  int size = int(random(20, 200));
  //  drawShip(c, mouseX, mouseY, size);
  background(255);
  if(mousePressed){
    xPos += xVel;
  }
  drawShip(c, xPos, yPos, size);
}

void drawShip(color col, int x, int y, int size){
  noStroke();
  fill(col);
  ellipse(x, y, size*2, size);
  ellipse(x, y-(size/2), size, size*.8);
}

void mousePressed(){
  c = color(random(255), random(255), random(255));
  int size = int(random(20, 200));
  xPos = mouseX;
  yPos = mouseY;
  drawShip(c, xPos, yPos, size);
}