float r = 0;
float theta = 0;
PVector position; 

void setup(){
  size (1000, 1000);
  background(255);
  position = new PVector(10, 0); 
}

void draw(){
  
  position.x = r*cos(random(10,20));
  position.y = -r*sin(frameCount);

  
  
  fill(random(0,255),random(0,255), random(0,255));
  noStroke();
  ellipse(position.x+width/2, position.y+height/2, random(10,50), random(10,50));
  
  theta += 0.7;
  r+= 0.3;
  
}