

//Variables
int numBubbs = 500; // number of bubbles
Bubble[] bubbs;
int o = 0; // next bubble
int h=0;

int time = 0; //mousepressed time
float count = 0; //time counted from the start


//Bubble Class 
class Bubble {

  // Class Variables
  PVector bubLoc; //position xy
  PVector bubSpeed; //velocity xy
  PVector bubSpeedChange; //acceleration xy
  color bubColor; //color
  float bubSize; //size
  boolean moving; 

  //Bubble Constructor
  Bubble(float bubXt, float bubYt, float bubSpeedXt, float bubSpeedYt, float bubSizet, color bubColort) {
    bubLoc = new PVector(bubXt, bubYt);
    bubSpeed = new PVector(bubSpeedXt, bubSpeedYt);
    bubColor = bubColort;
    bubSize = bubSizet;
  }


//functions//
  void update() {
    noStroke();
    fill(bubColor);

    if (moving) { 
      bubSpeedChange = new PVector(random(-0.1, 0.1), random(-0.1, 0.1)); //speed random
      bubSpeed.add(bubSpeedChange); //random acceleration
      bubLoc.add(bubSpeed); //Add velocity to location
    }
    ellipse(bubLoc.x, bubLoc.y, bubSize, bubSize);
  }



  void release() {
    noStroke();
    fill(bubColor);
    moving = true; 
    bubSpeed.x = mouseX-pmouseX; 
    bubSpeed.y = mouseY-pmouseY; 
  }
}


void setup() {
  size (800, 800);

  

  //use the Bubble class
  bubbs = new Bubble[numBubbs];


  for (int i = 0; i<bubbs.length; i++) {
    bubbs[i] = new Bubble(mouseX, mouseY, 0, 0, 0, color(random(255), random(255), random(255), 150));
  }
}


void draw() {

  background(0);
  float w = width/270.0f;
  stroke(-1, 200); 
  for (int i=0; i<270; i+=8) {
    float l = 50*sin(radians(i-h));
    float r =  4*sin(radians(i+h));
    float p =  4*sin(PI/4+radians(i-h));
    line(i*w, 0, i*w, height/2+l);
  }
  h++;

  count = millis();

  for (int j=0; j<numBubbs; j++) {
    bubbs[j].update();
  }
  if (keyPressed) {
    if (key == 's') {
      bubbs[o] = new Bubble(mouseX, mouseY, 0, 0, random(15), color(random(255), random(255), random(255), 100));
      bubbs[o].release();
      o++;
      if (o>=numBubbs) {
        o=0;
        time = 0;
      }
    }
    if (key == 'm') {
      bubbs[o] = new Bubble(mouseX, mouseY, 0, 0, random(50), color(random(255), random(255), random(255), 100));
      bubbs[o].release();
      o++;
      if (o>=numBubbs) {
        o=0;
        time = 0;
      }
    }
    if (key == 'l') {
      bubbs[o] = new Bubble(mouseX, mouseY, 0, 0, random(200), color(random(255), random(255), random(255), 100));
      bubbs[o].release();
      o++;
      if (o>=numBubbs) {
        o=0;
        time = 0;
      }
    }
  }
  if (mousePressed) {
    bubbs[o] = new Bubble(mouseX, mouseY, 0, 0, time, color(random(255), random(255), random(255), 100));
    time+=5;
  } else {
    time = 0;
  }



//blower
  noCursor();
  stroke(255, 200, 0);
  strokeWeight(3);
  noFill();
  ellipse(mouseX, mouseY, 20, 20);
  line(mouseX, mouseY+10, mouseX, mouseY+25);
 
}
void mouseReleased() {
  bubbs[o].release();
  o++;
  if (o>=numBubbs) {
    o=0;
    time = 0;
  }
}