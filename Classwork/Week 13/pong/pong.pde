float ballX, ballY; 
float speedX, speedY; 
float d = 25; 

void setup(){
  size(1000, 600); 
  textSize(24); 
  
  reset(); 
}

void draw(){
  background(0); 
  
  fill(0, 255, 0); 
  ellipse(ballX, ballY, d, d); 
  
  updateBall(); 
  checkCollisions(); 
}


void updateBall(){
  ballX += speedX; 
  ballY += speedY; 
}

void reset(){
  ballX = width/2; 
  ballY = height/2; 
  
  speedX = random(2, 4); 
  speedY = random(2, 4); 
}

void checkCollisions(){
  if(ballY >= height-d/2 || ballY <= d/2){
    speedY *= -1.1; 
  }
}