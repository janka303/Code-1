int c, x=0;
int y=-1;
PImage s;
void setup() {
    size(600,600);
    frameRate(20);
    x=15;
    y=15;
   
}
void draw() {
    c=int(random(2))*5;
    line(x+c, y, x*6-c, y*6);
    x+=5;
    if (x>595) {
        x=0;
        y+=15;
    }
    if (y>595) {
      y=94;
      s = get();
      background(204);
      image(s, 0, -15);
    }
}