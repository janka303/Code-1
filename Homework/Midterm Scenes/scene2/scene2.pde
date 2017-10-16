void setup(){
 size(1500,1500);
 noStroke();
}

void draw(){
  background(255);
  frameRate(15);
  
  for(int i = 0; i <= width; i+= width/17){
    for(int j = 0; j <= height; j += height/17){
      //figure out distance between mouseX, mouseY and ellipses
      float dist = dist(mouseX, mouseY, i, j);
      
      float c = map(dist, 0, 400, 255, 0);
      float s = map(dist, 0, width, 10, 50);
      fill(c, 10 , 120);
      ellipse(i, j, s, s);
      rect(i,j, s, s);
    }
  }
}