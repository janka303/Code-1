class Mover{
 //data
  PVector position;
  PVector velocity;
  PVector acceleration;
 
  float mass;
 
   //constructor (temporary variables)
  Mover(float m, float x, float y){
    mass = m;
    position = new PVector(x, y);
    velocity = new PVector(1, 0);
    acceleration = new PVector(0, 0);
  }
  
  void applyForce(PVector force){
    PVector f = PVector.div(force, mass);
    acceleration.sub(f);
    
    if(position.x <= mass/2 || position.x >= width - mass/2){
       acceleration.mult(-1);
    }
    if(position.y <= mass/2 || position.y >= height - mass/2){
       acceleration.mult(-1);
    }
  }
  
  void update(){
     velocity.add(acceleration);
     position.add(velocity);
     acceleration.mult(0);
  }
  
  void display(){
    fill(random(0,255), random(0,255), random(0,255));
    ellipse(position.x, position.y, mass*25, mass*25);
  }
}