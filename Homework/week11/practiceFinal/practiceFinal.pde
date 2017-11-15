PImage img;
Flag f;

void setup(){

 fullScreen();
 img = loadImage("map.png");
 background(255);
 smooth();
 frameRate(1000000000);
 
}

void draw(){
  imageMode(CENTER);
  loadPixels();
  
  image(img, 1600, 900, img.width, img.height);
  
  
  
  //int x = int(random(img.width));
  //int y = int(random(img.height));
  //int loc = x + y*img.width;
  
  //float r = red(img.pixels[loc]);
  //float g = green(img.pixels[loc]);
  //float b = blue(img.pixels[loc]);
  
  //noStroke();
  //fill(r, g, b, 255);
  //rect(x, y, 10, 10);
  ////ellipse(x, y, 10, 10);
}