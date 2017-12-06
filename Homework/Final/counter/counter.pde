int begin; 
int duration;
int time;
String text1;

void setup() {
  size(600, 600); 
 
  textSize(50);
  fill(0);
  text1 = "GAME OVER";

  begin = millis();
  time = duration = 15;
}

void draw() {
  background(255); 

  if (time > 0){  
    time = duration - (millis() - begin)/1000;
    text(time, 80, 80);
  }
  
  if(time == 0){
    text(text1, width/2, height/2);
  }
}

//counter code from: https://forum.processing.org/one/topic/how-to-make-millus-count-down-from-a-number.html