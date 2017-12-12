Kanar k;
Escape e;
Pierog p;
Walker w;
Counter c;

ArrayList<Walker> walkers = new ArrayList<Walker>();
Pierog [] pierog;

PImage img;
PImage img2;
PImage img3;

int direction = 1;
int direction2 = 0;
int num = 10;
int waitTimeScene3 = 7000;
int lastWaitTime = 2;
int sceneNum = 0 ;

float x = width;
float y = height;
float pX, pY ;

String text, text1, text2, text3, text4, text5, text6;

boolean showFlag = false ;
boolean doOnce = true;

void setup() {
  background(255);
  size(1229, 978);
  fill(0);

  textSize(28);
  fill(0);
  text1 = "Welcome to the ultimate Polish test! Complete the map and find Poland.";
  text2 = "Good job! Onto the next trial!";
  text3 = "Game over! You are not a true Pole!";
  text4 = "Quick! Catch them all!";
  text5 = "Escape the Kanar!";
  text6 = "Congrats! You are a true Pole (Or you just got lucky).";

  k = new Kanar(); 
  e = new Escape(250, 250); 
  c = new Counter();
  img = loadImage("metro.jpg");
  img2 = loadImage("metro2.jpg");
  img3 = loadImage("metro3.jpg");

  pierog = new Pierog[num];

  for (int i = 0; i < num; i++) {
    pierog[i] = new Pierog();
  }  
}

void draw() {
 
  if (mousePressed == true && mouseX >= 754 && mouseX <= 982 && mouseY >= 180 && mouseY <= 390) {
    sceneNum = 1 ;
    background(255);
  }
  if (num == 0) {
    sceneNum = 3;
  }
  if (c.time == 0) {
    sceneEnd();
    for (int i = 0; i < num; i++) {
      pierog[i].notshow();
    }
  }
  
  if (e.x == 500){
    delay(1000);
    sceneNum = 4;  
  }
  
  
  if (sceneNum == 0) {
    scene1();
  } else if (sceneNum == 1) {
    scene2() ; 
    if (millis() - lastWaitTime >= waitTimeScene3) {
      lastWaitTime = millis();
      sceneNum = 2;
    }
  } else if (sceneNum == 2) {
    scene3();
  } else if (sceneNum == 3) {
    scene4();
  } else if (sceneNum == 4) {
    scene5();
  }   
}

//////////////////////////////////////////////////////////////////////////// SCENES

void scene1() {
  pushMatrix();
  fill(0);
  text(text1, width/18, height/2);
  popMatrix();
  for (int i = 0; i < walkers.size(); i++) {
    Walker w = walkers.get(i);   
    w.step();
    w.display();
  }
}


void scene2() {
  //if(mousePressed == true && mouseX >= 754 && mouseX <= 982 && mouseY >= 180 && mouseY <= 390){

  fill(255, 0, 0);
  rect(0, 489, 1229, 489);
  fill(255);
  rect(0, 0, 1229, 489);
  fill(0);
  text(text2, width/4, height/4);
}

void scene3() {
  background(255);
  if (doOnce == true) {
    c.starTimer(); 
    doOnce = false;
  }

  if (mousePressed) {
    for (int i = 0; i<num; i++) {
      pX = pierog[i].getX();
      pY = pierog[i].getY();
      if (mouseX>pX && mouseX<pX+150 && mouseY>pY&&mouseY<pY+150) {
        pierog[i].notshow();
        num--;
      }
    }
  }
  c.display();
  pushMatrix();
  fill(0);
  text(text4, width/10, height/4);
  popMatrix();
  for (int i = 0; i<num; i++) {
    pierog[i].drawPierog();
    pierog[i].bounce();
    pierog[i].checkEdges();
  }
}

void scene4() {
  image(img, 0, 0);
  fill (0, 175, 255);
  smooth ();
  //noStroke();
  e.render();
  k.drawKanar();
  e.keyPress();
  e.checkEdges();

  image(img3, 950, 0);
  text(text5, width/10, height/4);
}

void scene5() { 
  fill(255, 0, 0);
  rect(0, 489, 1229, 489);
  fill(255);
  rect(0, 0, 1229, 489);
  pushMatrix();
  fill(0);
  text(text6, 10, height/4);
  popMatrix();
}

void sceneEnd() {
  background(255, 0, 0);
  rect(0,0, 1229, 978);
  fill(255);
  text(text3, width/8, height/2);
}

void mousePressed() {

  walkers.add(new Walker(mouseX, mouseY));
}