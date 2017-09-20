//COMPONENTS
//button placement
int x;
int y;
int size;
float dist;
boolean buttonClicked;


void setup(){
  size(1000,1000);
  x = width/2;
  y = height/2;
  size = 100;
}

void draw(){
  
  if(buttonClicked){
    background(0);
    fill(255,0,0);
  }else{
    background(255);
    fill(0,255,0);
  }
  
  ellipse(x,y,size,size);
  //dist = dist(mouseX, mouseY, x, y);
  println(calcDistance(x,y));
  
  //if(dist <= 50){
  // fill(0);
  ////}else{
  ////  fill(255);
  //}
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked;
  }
}

float calcDistance(int xPos, int yPos){
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
  
}