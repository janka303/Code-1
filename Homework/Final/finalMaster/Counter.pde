class Counter{
  int begin; 
  int duration;
  int time;
  String text1;
  
  Counter() {
    time = duration = 15 ;
  }
  
  void display(){
    textSize(50);
    fill(0);
    text1 = "GAME OVER";
  
   
    //time = duration = 15;
  
    if (time > 0){  
      time = duration - (millis() - begin)/1000;
      text(time, 80, 80);
    }
    
    if(time == 0){
      sceneEnd();
    }  
  }
  
  void starTimer() {
         begin = millis();

  }
}