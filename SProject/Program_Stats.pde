
// UNDER TESTINGGGGGGGGGGGGGGGGGGGGGGGGG

// TIME 
int MS = millis();
int s = second();  
int m = minute(); 
int h = hour();  
int d = day(); 
int mo = month();
int y = year();
//FRAMERATE
void FrameRate() {
  noFill();
  fill(0, 255, 255);
  text("FPS: "+frameRate, 50, 700);
}
// TIME AND DATE
void TimeNDate() {
  noFill();
  fill(0, 255, 255);
  text("Time: Hour:"+h+" Minutes: "+m+" Seconds: "+s, 50, 715);
  text("Date: Day:"+d+" Month: "+mo+" Year: "+y, 50, 730);
}