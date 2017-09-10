void setup(){
  size (1000,1000);
  background(0);
  rectMode(CENTER);
  noStroke();
  //frameRate(5);

}

void draw(){
  //line(x point1, y point1, x point2, y point2);
  //background(0); //one line that you can move around
  
  //opacity of fill makes a trail when drawing objects
  fill(random(0, 100));
  rect(0,0, width/2, height/2);
  fill(random(0, 100));
  rect(700,700, width/6, height/6);
  fill(random(0, 100));
  rect(900,100, width/6, height/6);
  
  stroke(255);
  fill(random(0,70), random(0,70), random(0,70));
  line(mouseX, mouseY, width/2, height/2); //creates origin at middle, radial lines
  line(mouseX, height/2, mouseY, width/2);
  line(mouseX, mouseY, 0, width/2);
  line(mouseX, mouseY, 1000, width/2);
  rect(mouseX, mouseY, 50, 50);
  //ellipse(mouseX, mouseY, 100,100);
  
  println(mouseX); //shows coordinates
  println(mouseY);
  
}