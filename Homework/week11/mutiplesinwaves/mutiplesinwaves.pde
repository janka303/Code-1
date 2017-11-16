//I keep getting errors on "NullPointerExeption" and "add Wave does not exist"

int num = 100;

//Wave [] wave = new Wave[num];
ArrayList <Wave> waves = new ArrayList<Wave>(); 
Wave w;

void setup(){
  size(1000,1000);

  
  //w = new Wave();
  
  
}

void draw(){
  background(0);
  //w.display();
  //w.calcWave();
  //w.renderWave();
  
  for(int i = 0; i<waves.size(); i++){
    Wave w = waves.get(i); 
    //w.display(); 
    w.calcWave(); 
    w.renderWave(); 
  }

}

void mousePressed(){
  waves.add(new Wave(mouseX, mouseY)); 

}