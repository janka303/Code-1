Kanar k;
Escape e;

PImage img;
PImage img2;
PImage img3;

int q = 0;
int w = 0;

int direction = 1;
int direction2 = 0;

float x = width;
float y = height;

 
void setup() {
  println(mouseX, mouseY);
  size(1229, 978);
  k = new Kanar(); 
  e = new Escape(250, 250); 
  img = loadImage("metro.jpg");
  img2 = loadImage("metro2.jpg");
  img3 = loadImage("metro3.jpg");

}

 
void draw() {
  image(img, 0, 0);
  

  fill (0, 175, 255);
  smooth ();
  //noStroke();
  e.render();
  k.drawKanar();
  e.keyPress();
  e.checkEdges();
  
  image(img3, 950, 0);

}
 