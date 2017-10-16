//2D arrays

int numbers[][] = {{1,2,3,4,5}, {6,7,8,9, 10}, {11, 12, 13,14, 15}};

// number[0][2] = 3

void setup(){
  println(numbers[1][0]);
  println(numbers[2][3]);
  
  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 5; j++){
      println(numbers[i][j]);
    }
  }
}

void draw(){
  
}