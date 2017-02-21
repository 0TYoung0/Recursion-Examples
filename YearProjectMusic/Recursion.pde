void RecursionSong1(float bs) {
  CrazyInLove.play();
  for (int x = 0; x < CrazyInLove.bufferSize() - 1; x++)
  {

    // MAPING FREQUENCY AND SONG POS
    float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width/2);
    float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width/2);
    xTwo = x1 * cos(thetaTwo); // X AXIS
    yTwo = x2 * sin(thetaTwo); // Y AXIS
    line( xTwo, 50 + CrazyInLove.right.get(x)*500, yTwo, 50 + CrazyInLove.left.get(x+1)*500 );
    line( -xTwo, 50 + CrazyInLove.right.get(x)*500, -yTwo, 50 + CrazyInLove.left.get(x+1)*500 );
    bs *= 0.00001;
    if (bs > 2) {
      pushMatrix(); //Tree TEST TOP RIGHT
      rotate(thetaTwo);   
      stroke(random(255), random(255), random(255));
      line(0, 0, xTwo, yTwo);  
      translate(bs, bs); 
      RecursionSong1(bs);       
      popMatrix();
    }
  }
}
void TT(float bs) { // TOP LEFT TREE
  CrazyInLove.play();

  for(int x = 0; x < CrazyInLove.bufferSize() - 1; x++)
  {
  float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width/2);
  float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0,  width/2);
  xTwo = x1 * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
  yTwo = x2 * sin(3*thetaTwo)*sin(2*thetaTwo)/(tan(2*thetaTwo)); // Y AXIS
  line( xTwo, xTwo + CrazyInLove.right.get(x)*500, yTwo, yTwo + CrazyInLove.left.get(x+1)*500 );
  line( -xTwo, xTwo + CrazyInLove.right.get(x)*500, -yTwo, yTwo + CrazyInLove.left.get(x+1)*500 );
  bs *= 0.36;  
  
    if (bs > 2) {
      smooth();   
      pushMatrix(); //BOTTOM MIDDLE RIGHT STICK
      rotate(thetaTwo);   
      line(0, 0, xTwo, yTwo);  
      translate( 0, 0); 
      TT(bs);     
      popMatrix();    
      pushMatrix(); //BOTTOM MIDDLE LEFT STICK
      rotate(-thetaTwo);
      line(0, 0, -xTwo, -yTwo);
      translate( -0, 0);
      TT(-bs);
      popMatrix();
    }
  }
}