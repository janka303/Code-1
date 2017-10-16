float x;
float y;

int size;
int timer;
void setup(){
  size(1500,1500);
  size = 100;
}

void draw(){
  background(0);
  
    fill(0,255,0);
    ellipse(mouseX, mouseY, 100, 100);

  
    x = lerp(x, mouseX, 0.05);
    y = lerp(y, mouseY, 0.05);
  
    fill(255);
    stroke(255);
    ellipse(x, y, size, size);
    
    if (size <= 1000 && millis() - timer >= 10000){
      size +=2;
    }
}