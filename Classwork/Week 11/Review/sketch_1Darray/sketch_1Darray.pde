//array review
//1D array = 1 row of ice cubes

int num = 60; //size of array

int [] xPos = new int[num];
int size = 10;

void setup(){
  size(600, 600);
  background(0);
  
  //filling xPos array with data
  for(int i = 0; i<num; i++){
    xPos[i] = i * size;   
  }
}

void draw(){
  for(int i = 0; i<num; i++){
    ellipse(xPos[i], 100, size, size);
  }
}