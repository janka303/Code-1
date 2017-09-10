void setup(){
  size (1000,1000);
  background(0);

}

void draw(){
  //line(x point1, y point1, x point2, y point2);
  //background(0); //one line that you can move around
  
  //opacity of fill makes a trail when drawing objects
  fill(0, 40);
  rect(0,0, width, height);
  
  stroke(255);
  line(mouseX, mouseY, width/2, height/2); //creates origin at middle, radial lines
  line(mouseX, height/2, mouseY, width/2);
  
  println(mouseX); //shows coordinates
  println(mouseY);
  
}