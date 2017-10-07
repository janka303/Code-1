int x;
int y;
int x2;
int y2;
float dist;
boolean buttonClicked;
boolean buttonClicked2;
int size;
int index = -1;
String text1;

void setup(){
  size(600,600);
  x = 300; 
  y = 100; 
  x2= 300; 
  y2= 500; 
  size = 70;
  rectMode(CENTER);
  textSize(30);
  
  text1 = "Have a nice day :)";
}

void draw(){
  
    for(int i = 0; i<=10; i++){
       text(text1, 200, height/2);
    }
 
    
    if (buttonClicked){
    fill(0, 255, 0); 
    background(255);
    pushMatrix();
    fill(0, mouseX, mouseY);
    popMatrix();
    ellipse(mouseX, mouseY, mouseX, mouseY);

  } else {
    //background(255); 
    fill(255, 0, 0);
  }
  
    ellipse(x, y, size, size);
  
    if (buttonClicked2){
    background(255);
    fill(0, 255, 0); 
    pushMatrix();
    fill(255, 0, 0);
    ellipse(x, y, size, size);  
    popMatrix();
    pushMatrix();
    fill(0, mouseX, mouseY);
    popMatrix();
    rect(mouseX, mouseY, mouseX, mouseY);

  } else {
    //background(255); 
    fill(255, 0, 0);
    
  }
  
    ellipse(x2, y2, size, size);  

  
  if (buttonClicked2){
    
  }
}

void mousePressed(){
  if (calcDistance(x, y) <= 50) {
    buttonClicked = !buttonClicked;
  }
  if (calcDistance(x2, y2) <=50) {
    buttonClicked2 =!buttonClicked2;
  }
}

float calcDistance(int xPos, int yPos) {
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}