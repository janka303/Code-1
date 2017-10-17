float xPos, yPos;
float xVel, yVel;
int radius = 100;
boolean buttonClicked;
boolean buttonClicked1;
int q; 
int w; 
int x2;
int y2;
float x;
float y;
float dist; 
String text1, text2, text3, text4, text5, text6, text7, text8;

int goodBall;
int step = 0;

//scene1
int numE = 100; 
int eSize[]= new int[numE]; 
int[] eSpeedX = new int[numE];
int[] eSpeedY = new int[numE]; 
int[] ePosX = new int [numE]; 
int[] ePosY = new int [numE]; 
color[] baseColor = new int[numE]; 

//scene3

int size;
int timer;



void setup(){
    size(1500, 1500); 
    q = width/2; 
    w = height/2; 
    textSize(20);
    text1 = "Hey, how are you. I'm here to show you around. Click me to follow.";
    text2 = "This is pretty cool, but let's move on here!. Find the place 1/4 of the ellipses join together.";
    text3 = "Find the hidden passage.";
    text4 = "Uu, this looks fun. Let's draw something cool.";
    text5 = "Hey, what do you think you're doing? This is my turf.";
    text6 = "You've made a huge mistake...";
    text7 = "Hide me behind that square.";
    text8 = "Hahahah";
    x2 = height/4;
    y2 = width/4;
    
  //Scene 1
   for(int i = 0; i<numE; i++){
    ePosX[i] = int(random(0, 5)); 
    ePosY[i] = int(random(0, 5)); 
    
    eSpeedX[i] = int(random(-7,5));
    eSpeedY[i] = int(random(-7,5));
    
    eSize[i] = int(random(50,100));
    
    baseColor[i] = color(int(random(10,170)), int(random(0, 10)),  int(random(150, 255))); 
    if(eSpeedX[i] == 0){
      eSpeedX[i] = 1; 
    }
    if(eSpeedY[i] == 0){
      eSpeedY[i] = 1; 
    }
  }
  
  //scene3
  size = 100;
}


void draw(){
  
goodBall(width/2, height/2);

  if (buttonClicked){
    goodBall(mouseX, mouseY);
    fill(255);
    rect(width/4, height/4, 110, 110);
    text(text7, width/6, height/5);
  }else{
    text(text1, width/2 - 300, height/2 - 100);    
  }
  
  if(mouseX == 435){
    step = 1;
    
  }
   
  if(mouseX == 1010){
    step = 2;
    
  }
  
  if(mouseX == 1450){
    step = 3;
    
  }
  
  if(mouseX == 750){
    step = 4;
   
  }
  if (step == 1){
   scene1(); 
   fill(255);
   text(text2, width/8, height/2);
  }
  
  if (step == 2){
   scene2();
   fill(255);
   text(text3, width/4, height/2);
  }
  
  if (step == 3){
   scene3();
   fill(255);
   text(text4, width/8, height/2);
  }
  
  if (step == 4){
   scene4();
   fill(255,0,0);
   text(text5, height/5, width/5);
  }
  if (buttonClicked1){
    tagScene();
    fill(255,0,0);
    text(text6, height/5, width/5);
    
  }
 
    
  
  
  //if(mouseX = width/4, mouseY = height/4){
    //scene1();

  println(mouseX, mouseY);
   //println(calcDistance(x, y));
}

void goodBall(int x, int y){
   background(0);
   noStroke();
   smooth();
   fill(#8DFAB4);
   ellipse(x, y, radius, radius);
   //fill(255);
   //rect(height/2, width/2, 150, 150);
}

  


void scene1(){
background(random(10,50)); 
  
  goodBall(mouseX, mouseY);
  
  //set speed of ellipses 
  for(int i =0; i<numE; i++){
    ePosX[i] = ePosX[i] + eSpeedX[i]; 
    ePosY[i] = ePosY[i] + eSpeedY[i]; 
  }
  
  //setup boundaries for ellipses
  for(int i =0; i<numE; i++){
    if(ePosX[i] <= 0 || ePosX[i]>= width){
      eSpeedX[i] = eSpeedX[i]*-1; 
    }
    if(ePosY[i] <= 0 || ePosY[i]>= height){
      eSpeedY[i] = eSpeedY[i]*-1; 
    }
  }
  
  //draw ellipse later 
  for(int i =0; i<numE; i++){
    fill(baseColor[i]); 
    ellipse(ePosX[i], ePosY[i], eSize[i], eSize[i]); 
  }
  
  
}

void scene2(){
  background(255);
  //frameRate(15);
  fill(255);
  text(text3, width/2, height/2);
  goodBall(mouseX, mouseY);
  
  for(int i = 0; i <= width; i+= width/17){
    for(int j = 0; j <= height; j += height/17){
      //figure out distance between mouseX, mouseY and ellipses
      float dist = dist(mouseX, mouseY, i, j);
      
      float c = map(dist, 0, 400, 255, 0);
      float s = map(dist, 0, 900, 10, 0);
      fill(c, 10 , 120);
      ellipse(i, j, s, s);
      rect(i,j, s, s);
    }
  }
}

void scene3(){
  
  goodBall(mouseX, mouseY);
  
  fill(0, 0);
  rect(0,0, width, height);
  
  stroke(200);
  //line(mouseX, mouseY, width/2, height/2); //creates origin at middle, radial lines
  //line(mouseX, height/4, mouseY, width/6);
  fill(0, 0);
  line(mouseX, height/6, mouseY, width/4);
  line(mouseX, height, mouseY, width/20);
}

void scene4(){
  background(0);
  ellipse(height/2, width/2, radius, radius);
  fill(255,0,0);
  ellipse(x2, y2, radius, radius);
  
}

void tagScene(){
  background(0);
  
    fill(0,255,0);
    goodBall(mouseX, mouseY);

  
    x = lerp(x, mouseX, 0.02);
    y = lerp(y, mouseY, 0.02);
  
    fill(255,0,0);
    stroke(255);
    ellipse(x, y, size, size);
    
    if (size <= 2500 && millis() - timer >= 10000){
      size +=2;
    }
    if (millis() - timer >= 10010){
      fill(255);
      textSize(50);
      text(text8, height/2, width/2);
    }
}
  


void mousePressed(){
   if (calcDistance(q, w) <= 50) {
    buttonClicked = !buttonClicked;
  }
   if (calcDistance(x2, y2) <= 50) {
    buttonClicked1 = !buttonClicked1;
   }
}

float calcDistance(int xPos, int yPos) {
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}