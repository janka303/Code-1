//pseudo code
// math function = random inputs (ex. x + y = n) 
// pressable button

int x,y; //variables
int q;
int w;
float dist;
boolean buttonClicked;
String text1, text2;
int addNumbers;

void setup(){
  size(600,600);
  q = width/2;
  w = height/2;
  
  text1="+";
  text2="=";
  
  textSize(20);
}

void draw(){
  background(255);
  addNumbers = addNumbers(x,y);
  if (buttonClicked){
    text(x,100, 400);
    text(text1,150, 400);
    text(y, 200, 400);
    text(text2, 250,400);
    text(addNumbers, 300, 400);
  }else{
    background(255);
  }
  fill(0,255,0);
  ellipse(q, w, 100, 100);   
 
}

void mousePressed(){
  if(calcDistance(q, w) <=50){
    buttonClicked = true;
    x = int(random(0,255));
    y = int(random(0,255));
    
  }
}
  
float calcDistance(int qPos, int wPos){
  dist = dist(mouseX, mouseY, qPos, wPos);
  return dist;
}

int addNumbers(int x, int y){
 return x+y; 
}
  