int x, x2, x3;
int y, y2, y3;
int size;
int xPos, yPos;

void setup(){
 size(1000,1000);
 background(#BCE5DF);
 xPos = mouseX;
 yPos = mouseY;
 
}

void draw(){
   background(#BCE5DF);
   paperPlane(xPos, yPos, size);
}

void paperPlane(int x, int y, int size){

  fill(255);
  triangle(30+mouseX, 65+mouseY, 45+mouseX, 20+mouseY, 100+mouseX, 75+mouseY);  //triangle(x1, y1, x2, y2, x3, y3)
  triangle(20+mouseX, 35+mouseY, 45+mouseX, 20+mouseY, 100+mouseX, 75+mouseY);
  size = 100;
  
  
}