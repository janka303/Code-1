void setup(){
  size(1000,1000);
  background(255);
  smooth();
  fill(192);
  noStroke();
  //rect(80,80,80,80);
  
  //pushMatrix();
  //translate(140,100);
  //rotate(radians(45));
  //fill(0);
  //rect(0,80,80,80);
  //popMatrix();
}

void draw(){
  //if whatever inside parenthesis is true, then do whatever is inside curly brackets
  if(frameCount%10 == 0){
    fill(random(0,255), random(0,255),random(0,255));
    pushMatrix();
    translate(200,200);
    rotate(radians(frameCount*4%360));
    //rect(0,0,160,40);
    ellipse(0,0,200,400);
    popMatrix();
  
}}