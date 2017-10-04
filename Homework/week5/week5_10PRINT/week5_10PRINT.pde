int c, x=0;
int y=-1;

void setup() {
    size(600,600);
    frameRate(20);
  
}
void draw() {
    //stroke(random(0,255));
    c=int(random(2))*5;
    line(x+c, y, x+5-c, y+30);
    x+=5;
    if (x>595) {
        x=0;
        y+=30;
    }
    if (y>595) {
      y=94;
      background(204);

    }
}