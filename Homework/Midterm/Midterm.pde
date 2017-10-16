float xPos, yPos;
float xVel, yVel;
int radius = 100;
boolean buttonClicked;
int x; 
int y; 
float dist; 
String text1, text2, text3, text4;

//scene1
int numE = 100; 
int eSize[]= new int[numE]; 
int[] eSpeedX = new int[numE];
int[] eSpeedY = new int[numE]; 
int[] ePosX = new int [numE]; 
int[] ePosY = new int [numE]; 
color[] baseColor = new int[numE]; 


void setup(){
    size(1500, 1500); 
    x = width/2; 
    y = height/2; 
    textSize(20);
    text1 = "Hey, how are you. I'm here to show you around. Click me to follow.";

}

void draw(){
  
goodBall(width/2, height/2);

  if (buttonClicked){
    goodBall(mouseX, mouseY);
    fill(255);
    rect(width/4, height/4, 110, 110);
  }else{
    text(text1, width/2 - 300, height/2 - 100);    
  }
  
  if(mousePressed){
   scene1(); 
  }

  
  //if(mouseX = width/4, mouseY = height/4){
    //scene1();

    
   println(calcDistance(x, y));
}

void goodBall(int x, int y){
   background(0);
   fill(#8DFAB4);
   ellipse(x, y, radius, radius);
}

void badBall(){
  
}

void scene1(){

}

void scene2(){
  
}

void mousePressed(){
   if (calcDistance(x, y) <= 50) {
    buttonClicked = !buttonClicked;
  }
}

float calcDistance(int xPos, int yPos) {
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}