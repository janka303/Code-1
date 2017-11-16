class Wave {
  PVector position; 
  PVector acceleration; 
  int num = 60;
  int [] xPos = new int[num];
  int size = 10;
  
  int xspacing = 16;   // How far apart should each horizontal location be spaced
  int w;              // Width of entire wave

  float theta = 0.0;  // Start angle at 0
  float amplitude = 100.0;  // Height of wave
  float period = random(300,500.0);  // How many pixels before the wave repeats
  float dx;  // Value for incrementing X, a function of period and xspacing
  float [] yvalues;  // Using an array to store height values for the wave
  
  Wave(int x, int y){
    position = new PVector(x, y);
    acceleration = new PVector(0, 0.5);
  
  }
  
  
  void calcWave(){
    w = width+16;
    dx = (TWO_PI / period) * xspacing;
    yvalues = new float[w/xspacing];
    
    theta += random(0.01, 0.09);

    // For every x value, calculate a y value with sine function
    float x = theta;
    for (int i = 0; i < yvalues.length; i++) {
      yvalues[i] = sin(x)*amplitude;
      x+=dx;
    } 
  }
    
  void renderWave(){
    noStroke();
    float c = (map(width, 20, 150, 0, 175));
    fill(150, c, 20);
    // A simple way to draw the wave with an ellipse at each location
    for (int x = 0; x < yvalues.length; x++) {
      ellipse(x*xspacing, height/2+yvalues[x], 16, 16);
    }
  }
    
  
  void display(){
    renderWave();
    calcWave();
  }
}