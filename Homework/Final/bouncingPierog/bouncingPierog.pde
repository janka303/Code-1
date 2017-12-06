Pierog p;

int num = 15;
float g, b;
Pierog [] pierog;

void setup(){
  background(255);
  size(1229,978);
  
  pierog = new Pierog[num];
  
  for(int i = 0; i < num; i++){
    pierog[i] = new Pierog();  
  }
}

void draw(){
  background(255);
  for(int i = 0; i<num; i++){
    pierog[i].drawPierog();
    pierog[i].bounce();
    pierog[i].checkEdges(); 
  }
}