int numE = 100; 

int eSize[]= new int[numE]; 

int[] eSpeedX = new int[numE];
int[] eSpeedY = new int[numE]; 

int[] ePosX = new int [numE]; 
int[] ePosY = new int [numE]; 


color[] baseColor = new int[numE]; 

void setup(){
  size(1500, 1500); 
  noStroke();
  for(int i = 0; i<numE; i++){
    ePosX[i] = int(random(0, 5)); 
    ePosY[i] = int(random(0, 5)); 
    
    eSpeedX[i] = int(random(-7,5));
    eSpeedY[i] = int(random(-7,5));
    
    eSize[i] = int(random(50,100));
    
    baseColor[i] = color(int(random(10,170)), int(random(0, 10)),  int(random(150, 255))); 
    if(eSpeedX[i] == 0){
      eSpeedX[i] = 1; 
    }
    if(eSpeedY[i] == 0){
      eSpeedY[i] = 1; 
    }
  }
}

void draw(){
  background(random(10,50)); 
  
  //set speed of ellipses 
  for(int i =0; i<numE; i++){
    ePosX[i] = ePosX[i] + eSpeedX[i]; 
    ePosY[i] = ePosY[i] + eSpeedY[i]; 
  }
  
  //setup boundaries for ellipses
  for(int i =0; i<numE; i++){
    if(ePosX[i] <= 0 || ePosX[i]>= width){
      eSpeedX[i] = eSpeedX[i]*-1; 
    }
    if(ePosY[i] <= 0 || ePosY[i]>= height){
      eSpeedY[i] = eSpeedY[i]*-1; 
    }
  }
  
  //draw ellipse later 
  for(int i =0; i<numE; i++){
    fill(baseColor[i]); 
    ellipse(ePosX[i], ePosY[i], eSize[i], eSize[i]); 
  }
}