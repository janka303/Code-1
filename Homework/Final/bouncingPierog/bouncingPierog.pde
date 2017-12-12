Pierog p;

int num = 15;
float g, b;
float pX, pY ;
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
    //println(i);
  }

}

void mousePressed(){
    //pierog[15] = 0;
    for(int i = 0; i<num; i++){
      pX = pierog[i].getX();
      pY = pierog[i].getY();
      if(mouseX>pX && mouseX<pX+150 && mouseY>pY&&mouseY<pY+150){
        pierog[i].notshow();
    }
  }
  println("Px: " + pX) ;
  println("Py: " + pY) ;
  println(mouseX) ;
  println(mouseY) ;
}