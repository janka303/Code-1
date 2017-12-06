class Kanar {
  float x, y;
  
  Kanar(){
    
  }
  
  void drawKanar(){
    for ( int i=-1; i < 2; i++) {
      for ( int j=-1; j < 2; j++) {
        pushMatrix();
          translate(x + (i * width), y + (j*height));
          fill(#196ACB);
          rect(x-100, y, 40,90);
          fill(#F5E4C1);
          rect(x-100, y-10, 40, 30);
          fill(#196ACB);
          rect(x-100, y-10, 40, 10);
        popMatrix(); 
        
        x = lerp(x, e.x, 0.06);
        y = lerp(y, e.y, 0.06);
      }
    }
  }
}