//simple functions

void setup (){
  
}

void draw(){
  
  //addition simple
  
  //int sum = 4+5;
  //println(sum);
  
  //int sum2 = 5+5;
  //println(sum2);
  
  //addition easier way to get addition values
  
  println(addNumbers(4, 5)); 
  println(addNumbers(int (random(0,4)), 6));
  
}

// a and b don't have to be defined, are defined above in void draw 
int addNumbers(int a, int b) {
  // return sum
  return a+b; 
  
}