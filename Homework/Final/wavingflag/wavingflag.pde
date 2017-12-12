float x;
float y;
PImage img;
 
void setup() {
  background(135);
  size(400, 400);
  rectMode(CENTER);
}
 
void draw(){
  background(135);
  noStroke();

  fill(255, 0, 0);
  rect(mouseX+40, mouseY-50, 90, 60);
  fill(0);
  rect(mouseX, mouseY-10, 5, 150);
  img = get();
  
  for(int x = 0; x < width; x++){
    image(img.get(x,0,1,img.height), x, 10*sin(radians(x+millis())));
  }
  
}