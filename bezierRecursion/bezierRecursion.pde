float theta;
float a;
float rTwo;
void setup() {
  rTwo = height * 0.45;
  theta = 0;
  size(750, 750); 
}

void draw() {
  translate(width/2, height/2);
    background(0);

  stroke(255);
  float a = (mouseX / (float) height) * 90;
  theta = radians(a);  // THETA CONVERTER
  RecursionTest1(100);
  
}
void RecursionTest1(float bs ) { // TOP RIGHT TREE
  bs *= 0.36; 

  //for (int i = 0; i < 200; i += 40) {
    bezier(400, 20+bs, 20+bs, 20+bs, 20+bs, bs, bs, bs);
  if (bs > 2) {
    smooth();   
    pushMatrix(); //BOTTOM MIDDLE RIGHT STICK
    rotate(theta);   
    line(bs, 0, 0, 0);  
    translate( 0, 0); 
    RecursionTest1(bs);       
    popMatrix();    
    pushMatrix(); //BOTTOM MIDDLE LEFT STICK
    rotate(-theta);
    line(bs, 0, 0, 0);
    translate( 0, 0);
    RecursionTest1(bs);
    popMatrix();
  }
  
} 