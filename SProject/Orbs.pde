void  Orb (float xTwo, float yTwo) { 
    xTwo = rTwo * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
    yTwo = rTwo * sin(3*thetaTwo)*sin(4*thetaTwo); // Y AXIS
    thetaTwo += theta_vel; // THETA
    theta_vel += theta_acc; // VELOCITY
    ellipse ( xTwo, yTwo, 16 , 16); // CIRCLE
    ellipse ( -xTwo, -yTwo, 16 , 16); // CIRCLE
}
void Orb2 (float xTwo, float yTwo) {
    xTwo = rTwo * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
    yTwo = rTwo * sin(3*thetaTwo)*sin(2*thetaTwo); // Y AXIS
    thetaTwo += theta_vel; // THETA
    theta_vel += theta_acc; // VELOCITY
    ellipse ( xTwo, yTwo, 16 , 16); // CIRCLE
    ellipse ( -xTwo, -yTwo, 16 , 16); // CIRCLE
}
void Test (float xTwo, float yTwo) {
    TheHills.play();
    for(int x = 0; x < TheHills.bufferSize() - 50; x++)
    {
    r = random(255);
    g = random(255);
    b = random(255);
    // MAPING FREQUENCY AND SONG POS
      float x1 = map(x, 0, TheHills.bufferSize(), 0, width/2);
      float x2 = map(x+1, 0, TheHills.bufferSize(), 0,  width/2);
      xTwo = x1 * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
      yTwo = x2 * sin(3*thetaTwo)*sin(2*thetaTwo)/(tan(2*thetaTwo)); // Y AXIS
      ellipse( TheHills.right.get(x)*475, TheHills.left.get(x+1)*475 , 3, 3  );
    }
}
void Test2 (float xTwo, float yTwo) {
    AintMyFault.play();
    for(int x = 0; x < AintMyFault.bufferSize() - 50; x++)
    {
    r = random(255);
    g = random(255);
    b = random(255);
    // MAPING FREQUENCY AND SONG POS
      float x1 = map(x, 0, AintMyFault.bufferSize(), 0, width/2);
      float x2 = map(x+1, 0, AintMyFault.bufferSize(), 0,  width/2);
      xTwo = x1 * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
      yTwo = x2 * sin(3*thetaTwo)*sin(2*thetaTwo)/(tan(2*thetaTwo)); // Y AXIS
      line( AintMyFault.left.get(x)*475, AintMyFault.left.get(x+1)*475 , 5, 5  );
    }
}
void Test3 (float xTwo, float yTwo) {
    SendThemOff.play();
    for(int x = 0; x < SendThemOff.bufferSize() - 50; x++)
    {
    r = random(255);
    g = random(255);
    b = random(255);
    // MAPING FREQUENCY AND SONG POS
      float x1 = map(x, 0, SendThemOff.bufferSize(), 0, width/2);
      float x2 = map(x+1, 0, SendThemOff.bufferSize(), 0,  width/2);
      xTwo = x1 * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
      yTwo = x2 * sin(3*thetaTwo)*sin(2*thetaTwo)/(tan(2*thetaTwo)); // Y AXIS
      ellipse( SendThemOff.right.get(x)*475, SendThemOff.left.get(x+1)*475 , 3, 3  );
    }
}
void Test4 (float xTwo, float yTwo) {
    SendThemOff.play();
    for(int x = 0; x < SendThemOff.bufferSize() - 50; x++)
    {
    r = random(255);
    g = random(255);
    b = random(255);
    // MAPING FREQUENCY AND SONG POS
      float x1 = map(x, 0, SendThemOff.bufferSize(), 0, width/2);
      float x2 = map(x+1, 0, SendThemOff.bufferSize(), 0,  width/2);
      xTwo = x1 * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
      yTwo = x2 * sin(3*thetaTwo)*sin(2*thetaTwo)/(tan(2*thetaTwo)); // Y AXIS
      ellipse( SendThemOff.right.get(x)*475, SendThemOff.left.get(x+1)*475 , 3, 3  );
    }
}
void Test5 (float xTwo, float yTwo) {
    AintMyFault.play();
    for(int x = 0; x < AintMyFault.bufferSize() - 50; x++)
    {
    r = random(255);
    g = random(255);
    b = random(255);
    // MAPING FREQUENCY AND SONG POS
      float x1 = map(x, 0, AintMyFault.bufferSize(), 0, width/2);
      float x2 = map(x+1, 0, AintMyFault.bufferSize(), 0,  width/2);
      xTwo = x1 * cos(1.5*thetaTwo)*cos(3*thetaTwo)*(sin(3*thetaTwo)); // X AXIS
      yTwo = x2 * sin(3*thetaTwo)*sin(2*thetaTwo)/(tan(2*thetaTwo)); // Y AXIS
      ellipse( AintMyFault.right.get(x)*475, AintMyFault.left.get(x+1)*475 , 3, 3  );
      line( AintMyFault.left.get(x)*475, AintMyFault.left.get(x+1)*475 , 5, 5  );
    }
}