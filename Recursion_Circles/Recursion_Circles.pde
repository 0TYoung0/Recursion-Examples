void setup() {
  size(750, 750);
  noStroke();
  noLoop();
}

void draw() {
  drawCircle(width/2, 280, 8); // (Where circle is located, radius, how many circles) 
}

void drawCircle(int x, int radius, int cAmount) {                    
  float Gray = 126 * cAmount/4.0; // Changes the circles color after each iteration. 
  fill(Gray);
  ellipse(x, height/2, radius*2, radius*2);      
  if(cAmount > 1) {
    cAmount = cAmount - 1;
    drawCircle(x - radius/2, radius/2, cAmount);
    drawCircle(x + radius/2, radius/2, cAmount);
  }
}