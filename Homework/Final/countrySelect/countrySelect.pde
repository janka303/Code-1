PImage img;
String text;
int xPos, yPos;
float dist;
boolean countryClicked;
int sceneNumber = 0; 
void setup(){
  size(1229, 978); 
  img = loadImage("map.png"); 
}

void draw(){
  image(img, 0, 0);
  println(mouseX, mouseY);
  if(sceneNumber == 0){
    image(img, 0, 0);
  }
  if(countryClicked && mouseX >= 754 && mouseX <= 982 && mouseY >= 180 && mouseY <= 390){
    fill(255,0,0);
    rect(0, 489, 1229, 489);
    fill(255);
    rect(0, 0, 1229, 489);
  }
  
  if(mousePressed && mouseX <=754 && mouseX >=982 && mouseY <=180 && mouseY >= 390){
    background(255,0,0);
  }
}

void mousePressed(){
  if(mouseX >= 754 && mouseX <= 982 && mouseY >= 180 && mouseY <= 390){  
    countryClicked = !countryClicked;
  }
}