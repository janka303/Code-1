//COMPONENTS
//button placement
int x;
int y;
int q;
int w;
int size;
float dist;
boolean buttonClicked;
boolean buttonClicked2;


void setup(){
  size(1000,1000);
  x = width/2;
  y = height/2;
  size = 100;
  q = width/4;
  w = height/4;
}

void draw(){
  
  if(buttonClicked){
    background(0);
    fill(255,0,0);
  }else{
    //background(255);
    fill(0,255,0);
  }

if(buttonClicked2){
    background(random(0,255), random(0,255), random(0,255)); 
    fill(255,0,0);
  }else{
    //background(255);
    fill(0,255,0);
  }
  
  ellipse(q,w, size*2, size*2);
  dist = dist(mouseX, mouseY, q, w);
  
  ellipse(x,y,size,size);
  dist = dist(mouseX, mouseY, x, y);
  println(calcDistance(x,y));
  
  }
  
  
  //if(dist <= 50){
  // fill(0);
  ////}else{
  ////  fill(255);
  //}


void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked;
  }
  if(calcDistance(q,w) <=25){
    buttonClicked2 = !buttonClicked2;
  }
}

float calcDistance(int xPos, int yPos){
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
  
}