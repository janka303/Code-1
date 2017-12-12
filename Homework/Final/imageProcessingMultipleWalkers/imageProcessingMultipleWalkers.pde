Walker w;

ArrayList<Walker> walkers = new ArrayList<Walker>(); 

void setup(){
  size(1229,978); 
  //w = new Walker(width/2, height/2);
  background(255);
  //frameRate(1000000000);
}

void draw(){
  for(int i = 0; i < walkers.size(); i++){
    Walker w = walkers.get(i);   
    w.step();
    w.display();
  }
    
  //w.step();
  //w.display();
}

void mousePressed(){
  walkers.add(new Walker(mouseX, mouseY));
}
  