int x; 
int y; 
int x2, y2; 
int x3, y3;
int x4, y4;
int size; 
float dist; 
boolean buttonClicked; 
boolean buttonClicked2; 
boolean buttonClicked3; 
boolean buttonClicked4; 
String text1, text2, text3, text4;
float rot = 0;

//set up a second button 
//do something else when that button is clicked
void setup() {
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  x2= 100; 
  y2= 100; 
  x3= 200;
  y3= 200;
  x4= 370;
  y4= 390;
  size = 100; 
  frameRate(25);

  textSize(15);

  text1 = "Hey, what do you think you're doing.";
  text2 = "Cut that out!";
  text3 = "How do you like me now?";
  text4 = "Can't click me now, can you?";
}

void draw() {
  //rot+=5;
  //x+=5;

  if (buttonClicked) {
    fill(255, 0, 0); 
    text(text1, 200, 400);
    ellipse(x2, y2, size, size);
  } else {
    background(255); 
    fill(0, 255, 0);
  }

  ellipse(x, y, size, size);  

  if (buttonClicked2) {
    background(255);
    fill(0, 0, 255); 
    text(text2, 100, 100);
    ellipse(x3, y3, size, size);
  } else {
    //background(255);
  }

  if (buttonClicked3) {
    background(255);
    fill(random(0, 255), random(0, 255), random(0, 255)); 
    text(text3, 300, 100);
    ellipse(x3, y3, size, size);
    ellipse(x4, y4, size, size);
    ellipse(500, 500, size, size);
    ellipse(random(x), random(y), size, size);
    ellipse(random(x), random(y), size, size);
  } else {
    //background(255);
  }
  
  if (buttonClicked4) {
    background (0);
    fill(255);
    ellipse(x4, y4, 10, 10);
    text(text4, 200,200);
    translate(x,y);
    rotate(radians(rot)); 
    rect(0,0,mouseX/2,mouseY/2);
  }else{
    
  }

//  if (buttonClicked4) {
//    background(255);
 
//  } else {
//    //background(255);
//  }

  println(calcDistance(x, y));
}

void mousePressed() {
  if (calcDistance(x, y) <= 50) {
    buttonClicked = !buttonClicked;
  }
  if (calcDistance(x2, y2) <=50) {
    buttonClicked2 =!buttonClicked2;
  }
  if (calcDistance(x3, y3) <= 50) {
    buttonClicked3 = !buttonClicked3;
    
  }
    
   if (calcDistance(x4, y4) <= 50) {
     buttonClicked4 = !buttonClicked4;
    }
  }


float calcDistance(int xPos, int yPos) {
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}