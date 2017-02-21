Water[] Waters; // Declare the array
int numWaters = 100;
int currentWater = 0; 
float r;
float g, b;
void setup() {
  size(1000, 1000);
  Waters = new Water[numWaters]; // Create the array
  for (int i = 0; i < Waters.length; i++) {
    Waters[i] = new Water(); // Create each object
  }
}
void draw() {

  background(0, 150, 255);
  stroke(r, g, b);
  for (int i = 0; i < Waters.length; i++) {
    Waters[i].grow();
    Waters[i].display();
  }
}
// Click to create a new Water
void mousePressed() {
  stroke(r, g, b);
  Waters[currentWater].start(mouseX, mouseY);
  currentWater++;
  if (currentWater >= numWaters) {
    currentWater = 0;
  }
}
class Water {
  float x, y;          // X-coordinate, y-coordinate
  float diameter;      // Diameter of the Water
  boolean on = false;  // Turns the display on and off

  void start(float xpos, float ypos) {
    x = xpos;
    y = ypos; 

    diameter = 1;
    on = true;
  }
  
  void grow() {
    if (on == true) {
      diameter +=10;
      if (diameter > 500) {
        on = false;
        diameter = 1;
      }
    }
  }

  void display() {
    if (on == true) {
      noFill();
      strokeWeight(5);
      r = random(255);
      g = random(255);
      b = random(255);
      stroke(r, g, b);
      ellipse(x, y, diameter, diameter);
      ellipse(x, y, diameter-50, diameter-50);
      ellipse(x, y, diameter-100, diameter-100);
      ellipse(x, y, diameter-200, diameter-200);
      ellipse(x, y, diameter-500, diameter-500);


    }
  }
}