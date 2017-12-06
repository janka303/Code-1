class Walker{
  int x, y;
  PImage img;
  int counter = 0;
  
  Walker(int x, int y){
    this.x = x; 
    this.y = y;
    img = loadImage("map.png"); 
  }
  
  void display(){
    noStroke();
    color posColor = img.get(x,y);   
    fill(posColor);
    rect(x, y, 5, 5);
  }
  
  void step(){
    int choice = int(random(4));
    
    if(choice == 0){
      this.x += 5;
    }else if (choice == 1){
      this.x -=5; 
    }else if (choice == 2){
      this.y +=5;
    }else{
      this.y -= 5;
    }

    
    this.x = constrain(this.x, 0, width);
    this.y = constrain(this.y, 0, height);
    

  }
}