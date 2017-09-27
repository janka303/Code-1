void setup(){
  
  //this is a whle loop
  //size(1000,1000);
  int index = -1;
  while (index < 10){
   index++;
   text(index, width/2, index*10);
   println(index);
  }
  
  for(int i = 0; i<=10; i++){
    println("for lop i is " + i);
  }
  
}

void draw(){
  
}