int x, y;
int size; 

void setup(){
  size (500,500);
  
  background(0);
  
  x = 200;
  y = 200;
  
}

void draw(){
  triangle(x +15, y, x, y +15, x +30, y +15);
  rect(x, y +15, 30, 30);
  rect(x + 12, y +30, 10, 15);
  
  pushMatrix();
  translate(-300,-100);
  scale(2.0); //makes whole canvas size bigger)
  triangle(x +15, y, x, y +15, x +30, y +15);
  rect(x, y +15, 30, 30);
  rect(x + 12, y +30, 10, 15);
  popMatrix();
}