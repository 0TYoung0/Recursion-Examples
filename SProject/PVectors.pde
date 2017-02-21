float x3 = 100;
float y3 = 100;
float xspeed = 5;
float yspeed = 1;
float wind;
float windMax = 30;
PVector location;
PVector velocity;
float smoke;
float smoke2;
float smoke3;
void PVECT() {
  smoke = random(50);
  noStroke();
  fill(255,40);
  rect(0,0,width,height);  
  location.add(velocity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height/3) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
      ellipse(width/2,location.y+wind, smoke, smoke);
    
}