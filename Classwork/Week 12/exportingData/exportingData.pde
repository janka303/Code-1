int [] x = new int [0];

int [] y = new int [0];

int version = 0;

void setup(){
  size(1000,1000);
  
}

void draw(){
  background(0);
  
  beginShape();
  
  for(int i = 0; i<x.length; i++){
    vertex(x[i], y[i]);
    fill(0, 255, 0);
    ellipse(x[i], y[i], 10, 10);
  } 
  
  endShape();
  
  if(x.length >=1){
    stroke(255);
    line(mouseX, mouseY, x[x.length-1], y[y.length-1]);
  }
}

void mousePressed(){
  x = append(x, mouseX);
  y = append(y, mouseY);
}

void keyPressed(){
  if (key == 's'){
    version ++;
    String [] rows = new String [x.length];
    
    for(int i = 0; i < x.length; i++){   
      rows[i] = x[i] + "\t" + y[i];
    }
    
    saveStrings("shapeVertices" + version + ".txt", rows);
    exit();
  }
}