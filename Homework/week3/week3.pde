int size;
int directionX = 1;
int directionY = 0;
int radius = 50;

float x=20;
float y=20;
float speed=10;
float g,b;

void setup()
{
  size(1000, 1000);
  smooth();
  stroke(10);
  //noStroke();
  ellipseMode(RADIUS);
  
}
void draw()
{
  g = map(x, 0, width, 0, 255);
  b = map(y, 0, height, 0, 255);
  background(0, g, b);
  // changing Position
  x=x+speed*directionX;
  y=y+speed*directionY; 
  
  // check boundaries
  if ((x>width-radius) || (x<radius))
  {   
    directionX=-directionX;
  }
  if ((y>height-radius) || (y<radius))
  {   
    directionY=-directionY;
  } 
  // draw
  //fill(0,153,51);
  //rect(0, 800, 1000, 200);
  //fill(102,51,0);
  //rect(200, 250, 10, 600);
  //rect(800, 250, 10, 600);
  //noFill();
  ////arc(800, 300, 600, 100, HALF_PI, PI);
  ////arc(800, 350, 600, 100, HALF_PI, PI);
  ////arc(800, 400, 600, 100, HALF_PI, PI);
  //fill (color(222, 22, 22)); 
  //ellipse (x, y, radius, radius);    // body
  //fill (color(22, 82, 22)); 
  //ellipse (x-4, y-4, 2, 2);  // the eye
  
}

  void drawDisc(int directionX, int directionY){
  noStroke();
  fill(255,255,255);
  ellipse(x,y,100,50);

  
}

void keyPressed(){
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      //if (directionX>0) { 
      
      
      drawDisc(directionX=-1,directionY=0);
      //drawDisc(directionY=0);
      //}
    }
    else if (keyCode == RIGHT)
    {
      //if (directionX<0) {  
      drawDisc(directionX=1,directionY=0);
      //drawDisc(directionY=0);
      //}
    }
    else if (keyCode == UP)
    {
      //if (directionY<0) {
      drawDisc(directionY=-1,directionX=0);
      //drawDisc(directionX=0);
      //}
    }
    else if (keyCode == DOWN)
    {
      //if (directionY<0) { 
      drawDisc(directionY=1,directionX=0);
      //drawDisc(directionX=0);
      //}
    }
  }
}
// =========================================================

//CREDITS - Found code for arrow keys on processing forum: 
//https://forum.processing.org/one/topic/movement-using-arrow-keys.html
//Alternated it quite a bit in order to fit in my own function 