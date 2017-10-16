void setup(){
  size (1500,1500);
  background(0);

}

void draw(){
  //line(x point1, y point1, x point2, y point2);
  //background(0); //one line that you can move around
  
  //opacity of fill makes a trail when drawing objects
  fill(0, 0);
  rect(0,0, width, height);
  
  stroke(200);
  //line(mouseX, mouseY, width/2, height/2); //creates origin at middle, radial lines
  //line(mouseX, height/4, mouseY, width/6);
  line(mouseX, height/6, mouseY, width/4);
  line(mouseX, height, mouseY, width/20);
  
  
  println(mouseX); //shows coordinates
  println(mouseY);
  
}