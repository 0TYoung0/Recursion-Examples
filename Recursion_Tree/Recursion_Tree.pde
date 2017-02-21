float theta;
float a;

void setup() {
  size(750, 750);
  frameRate(60);          
}

void draw() {
  background(0); // Has to be in the draw phase other wise you get overlapping color
  a = (mouseX / (float) height) * 90;  // Making the angle
  theta = radians(a); // Converting it to radians       
  stroke(255, 0, 0); // Color Red
  translate(width/2, height/2); //Moving the Tree to the middle of the screen
  RecursionTree(100); // When using push and pop martix never have this number greater than 150
}






void RecursionTree(float bs) { // BS Is the height of the starting line. 
  bs *= 0.66;  // How the size of each line changes, never have it greater than .66.
  if (bs > 2) {
    pushMatrix(); //BOTTOM MIDDLE RIGHT STICK
    rotate(theta);   
    line(0, 0, 0, -bs);  
    translate( 0, -bs); 
    RecursionTree(bs);       
    popMatrix();    
    pushMatrix(); //BOTTOM MIDDLE LEFT STICK
    rotate(-theta);
    line(0, 0, 0, -bs);
    translate( 0, -bs);
    RecursionTree(bs);
    popMatrix();
  }
} 