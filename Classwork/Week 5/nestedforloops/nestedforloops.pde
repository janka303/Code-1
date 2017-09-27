int r;
int size;

void setup(){
  size(600,600);
  size = 50;
}

void draw(){
  background(0);
  
  //SINGLE LOOP
  
  //for(int i = 10; i<=1000; i+=100){ //i+=10 same as multipling
  //  r = int(map(i, 0, 600, 0, 255)); // different shades of red
  //  fill(r, 0, 0);
  // //fill(map(i, 0, 600, 0, 255)); // different shades of gray
  // ellipse(i, 100, 100, 100);  
   
  // ellipse(i* mouseX/100, i*mouseY/100, 50, 50);
  //}
  
  //NESTED LOOP
  for (int i = 0; i <=width; i += size){
    for (int j = 0; j <= height; j +=size){
     r = int(map(i, 0, 600, 0, 255));
     int b = int(map(j, 0, 600, 0, 255));
     fill(r,0,b);
     
     ellipse(i, j, size, size); 
    }
  }
}