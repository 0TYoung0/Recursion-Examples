void RecursionTree(float bs) { // TOP RIGHT TREE
  bs *= 0.66;  
  if (bs > 2) {
    smooth();   
    pushMatrix(); //BOTTOM MIDDLE RIGHT STICK
    rotate(theta);   
    line(0, 0, bs, -bs);  
    translate( bs, -bs); 
    RecursionTree(bs);       
    popMatrix();    
    pushMatrix(); //BOTTOM MIDDLE LEFT STICK
    rotate(-theta);
    line(0, 0, bs, -bs);
    translate( bs, -bs);
    RecursionTree(bs);
    popMatrix();
  }
} 
void RecursionTreeTwo(float bs) { // TOP LEFT TREE
  bs *= 0.66;  
  if (bs > 2) {
    smooth();   
    pushMatrix(); //BOTTOM MIDDLE RIGHT STICK
    rotate(theta);   
    line(0, 0, -bs, -bs);  
    translate( -bs, -bs); 
    RecursionTreeTwo(bs);     
    popMatrix();    
    pushMatrix(); //BOTTOM MIDDLE LEFT STICK
    rotate(-theta);
    line(0, 0, -bs, -bs);
    translate( -bs, -bs);
    RecursionTreeTwo(bs);
    popMatrix();
  }
} 
void RecursionTreeThree(float bs) { // TOP MIDDLE TREE
  bs *= 0.66;  
  if (bs > 2) {
    smooth();   
    pushMatrix(); //BOTTOM MIDDLE RIGHT STICK
    rotate(theta);   
    line(0, 0, 0, -bs);  
    translate( 0, -bs); 
    RecursionTreeThree(bs);       
    popMatrix();    
    pushMatrix(); //BOTTOM MIDDLE LEFT STICK
    rotate(-theta);
    line(0, 0, 0, -bs);
    translate( 0, -bs);
    RecursionTreeThree(bs);
    popMatrix();
  }
} 
void tree (float len, float angle) {
  if (len >2) {
    rotate(radians(angle));
    line(0, 0, len, 0);
    translate(len,  0);
    pushMatrix();
    tree(len*.75, -30);
    popMatrix();
    pushMatrix();
    tree(len*.66, 50);
    popMatrix();
  }
}
void tree2 (float len, float angle) {
  if (len >2) {
    rotate(radians(angle));
    line(0, 0, len, 0);
    translate(len, 0);
    pushMatrix();
    tree2(len*.75, 9);
    popMatrix();
    pushMatrix();
    tree2(len*.66, 9);
    popMatrix();
  }
}
void boxes (float cx, float cy, float d) {
  strokeWeight(0.1*d);
  stroke(d);
  rect(cx, cy, d, d);
  
  if (d<20) return;
  boxes(cx-d/2, cy-d/2, d/2);
  boxes(cx+d/2, cy-d/2, d/2);
  boxes(cx-d/2, cy+d/2, d/2);
  boxes(cx+d/2, cy+d/2, d/2);
}

void TT(float bs) { // TOP LEFT TREE
  AintMyFault.play();

  for(int x = 0; x < AintMyFault.bufferSize() - 1; x++)
  {
  float x1 = map(x, 0, AintMyFault.bufferSize(), 0, width/2);
  float x2 = map(x+1, 0, AintMyFault.bufferSize(), 0,  width/2);
  xTwo = x1 * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
  yTwo = x2 * sin(3*thetaTwo)*sin(2*thetaTwo)/(tan(2*thetaTwo)); // Y AXIS
  line( xTwo, xTwo + AintMyFault.right.get(x)*500, yTwo, yTwo + AintMyFault.left.get(x+1)*500 );
  line( -xTwo, xTwo + AintMyFault.right.get(x)*500, -yTwo, yTwo + AintMyFault.left.get(x+1)*500 );
  bs *= 0.36;  
  
    if (bs > 2) {
      smooth();   
      pushMatrix(); //BOTTOM MIDDLE RIGHT STICK
      rotate(theta2);   
      line(0, 0, xTwo, yTwo);  
      translate( 0, 0); 
      TT(bs);     
      popMatrix();    
      pushMatrix(); //BOTTOM MIDDLE LEFT STICK
      rotate(-theta2);
      line(0, 0, -xTwo, -yTwo);
      translate( -0, 0);
      TT(-bs);
      popMatrix();
    }
  }
  /*void TT(float bs) { // BAD + 
  MONSTER.play();

  for(int x = 0; x < MONSTER.bufferSize() - 1; x++)
  {
  float x1 = map(x, 0, MONSTER.bufferSize(), 0, width/2);
  float x2 = map(x+1, 0, MONSTER.bufferSize(), 0,  width/2);
  xTwo = x1 * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
  yTwo = x2 * sin(3*thetaTwo)*sin(2*thetaTwo)/(tan(2*thetaTwo)); // Y AXIS
  line( x1, 25 + MONSTER.right.get(x)*375, x2, 25 + MONSTER.left.get(x+1)*375 );
  
  bs *= 0.36;  
  
    if (bs > 2) {
      smooth();   
      pushMatrix(); //BOTTOM MIDDLE RIGHT STICK
      rotate(theta_music);   
      line(0, 0, -xTwo, -yTwo);  
      translate( 0, 0); 
      TT(bs);     
      popMatrix();    
      pushMatrix(); //BOTTOM MIDDLE LEFT STICK
      rotate(-theta_music);
      line(0, 0, -xTwo, -yTwo);
      translate( -0, 0);
      TT(-bs);
      popMatrix();
    }
  }*/
  /*void TT(float bs) { // SCATTERED + MUSIC FREQ
  MONSTER.play();

  for(int x = 0; x < MONSTER.bufferSize() - 1; x++)
  {
  float x1 = map(x, 0, MONSTER.bufferSize(), 0, width/2);
  float x2 = map(x+1, 0, MONSTER.bufferSize(), 0,  width/2);
  xTwo = x1 * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
  yTwo = x2 * sin(3*thetaTwo)*sin(2*thetaTwo)/(tan(2*thetaTwo)); // Y AXIS
  line( x1, xTwo + MONSTER.right.get(x)*375, x2, yTwo + MONSTER.left.get(x+1)*375 );
  
  bs *= 0.36;  
  
    if (bs > 2) {
      smooth();   
      pushMatrix(); //BOTTOM MIDDLE RIGHT STICK
      rotate(theta_music);   
      line(0, 0, -xTwo, -yTwo);  
      translate( 0, 0); 
      TT(bs);     
      popMatrix();    
      pushMatrix(); //BOTTOM MIDDLE LEFT STICK
      rotate(-theta_music);
      line(0, 0, -xTwo, -yTwo);
      translate( -0, 0);
      TT(-bs);
      popMatrix();
    }
  }*/
} 