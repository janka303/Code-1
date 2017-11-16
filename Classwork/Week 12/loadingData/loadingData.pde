String [] rows;
int index = 0;

void setup(){
  size(1000,1000);
  background(0);
  
  rows = loadStrings("shapeVertices1.txt");
}

void draw(){
  fill(0, 255, 0);
  
  if(index< rows.length){
    String [] pieces = split(rows[index], "\t");
    
    if(pieces.length == 2){
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
    }
    index++;
  }
}