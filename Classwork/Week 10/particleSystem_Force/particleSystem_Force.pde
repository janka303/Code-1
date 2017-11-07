//int num = 100;

//Mover [] mover = new Mover[num];

ArrayList<Mover> movers;
Attractor a;

void setup(){
  size(700, 700);
  
  //for(int i = 0; i < num; i++){
  //  mover[i] = new Mover(random(.1, 1), random(width), random(height));
  //}
  movers = new ArrayList<Mover>();
  a = new Attractor();
}

void draw(){
  background(0);
  noStroke();
  
  a.display();
  a.startDragging();
  a.hover(mouseX, mouseY);
 
  //for(int i = 0; i < num; i++){
  //  PVector force = a.attract(mover[i]);
  //  mover[i].applyForce(force);
  //  mover[i].update();
  //  mover[i].display();
  //}
  
  for(int i = 0; i< movers.size(); i++){
    Mover m = movers.get(i);
    PVector force = a.attract(m);
    m.applyForce(force);
    m.update();
    m.display();
    
    if(m.position.y < 0 || m.position.y > height || m.position.x < 0 || m.position.x > width){
      movers.remove(i);
  }
}
  if(frameCount%5 == 0){
    movers.add(new Mover(random(.1, .5), random(width), random(height))); 
  }
}

void mousePressed(){
  a.clicked(mouseX, mouseY);
  movers.add(new Mover(random(.1, .5), random(width), random(height))); 
}

void mouseReleased(){
  a.stopDragging();
}