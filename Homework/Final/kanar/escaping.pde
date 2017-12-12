class Escape {
  float x, y;
  
  Escape(float x, float y) {
    this.x = x;
    this.y = y;
  }
  void display() {
    noStroke();
  }
 
 
  void keyPress() {
    //x = 950

    if (key == CODED) {
      if (keyCode == LEFT) {
        x = x - 5;
        direction = -1;
        direction2 = 0;
      }
      else if (keyCode == RIGHT) {  
        x = x + 5;
        direction = 1;
        direction2 = 0;
      }
      else if (keyCode == UP) {
        y = y - 5;
        direction = 0;
        direction2 = -1;
      }
      else if (keyCode == DOWN) { 
        y = y + 5;
        direction = 0;
        direction2 = 1;
      }
    }
  }
  
  void render() {
    for ( int i=-1; i < 2; i++) {
      for ( int j=-1; j < 2; j++) {
        pushMatrix();
          translate(x + (i * width), y + (j*height));
          fill(0);
          rect(x,y, 40,90);
          fill(#F5E4C1);
          rect(x, y-10, 40, 30);
        popMatrix();
      }
    }
  }
  
  void checkEdges(){
    println(x);
    if(x >= 440 || x < 0){
      println("potato");
      x=440;
      direction = 0;
      direction2 = 0;
       
    }

  }
}

//code by: https://forum.processing.org/two/discussion/1573/spoof-of-pacman-game-for-project