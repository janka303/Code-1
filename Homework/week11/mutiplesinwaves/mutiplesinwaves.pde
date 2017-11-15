//I keep getting errors on "NullPointerExeption" and "add Wave does not exist"

int num = 100;

Wave [] wave = new Wave[num];

Wave w;

void setup(){
  size(1000,1000);

  
  w = new Wave();
}

void draw(){
  background(0);
  w.display();
  w.calcWave();
  w.renderWave();

}

void mousePressed(){
  wave.add(new Wave(mouseX, mouseY)); 
}