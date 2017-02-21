//Year Project Music
void setup() {
  //Basic Setup
  fullScreen();
  background(0);
  //H = true;
  // Angle Stups + Velocity / Acceleration
  rTwo = height*45;
  theta = 0;
  thetaTwo = 0;
  //theta_vel = 0;
  //theta_acc = .000001;

  //Setting up Minim
  minim = new Minim(this);
  // Loading in the Songs
  CrazyInLove = minim.loadFile("CrazyInLove-J2.mp3");
  /*SingToYou = minim.loadFile("SingToYou-JohnSplothoff.mp3");
   BadAndBoujee = minim.loadFile("BadAndBoujee-Migos.mp3");
   BurnItToTheGround = minim.loadFile("BurnItToTheGround.mp3");
   OneForTheMoney = minim.loadFile("OneForTheMoney.mp3");
   Paris = minim.loadFile("Paris.mp3");
   Apologize = minim.loadFile("Apologize.mp3");
   LosingTheLight = minim.loadFile("LosingTheLight.mp3");
   IDontWannaLiveForever = minim.loadFile("IDontWannaLiveForever.mp3");
   HighRemastered = minim.loadFile("HighRemastered.mp3");*/

  //Font/Text
  //Segeo = loadFOnt("SegeoPrint-32.vlw");
  textSize(16);
  //Main Menu
  fill(0, 255, 0);
  text("Songs currently available: Crazy In Love by J2 (Press 1)", ((width/2)-(width/4)), ((height/2)-(height/4)));
}
void draw() {
  // Basis for Everything
  frameRate(120);
  float a = (mouseX / (float) width) * 90; // Recursion
  float a2 = (width / (float) height) * 90; // Stationary
  theta = radians(a);
  thetaTwo = radians(a2);
 /* if (H==true)
  {
    //Main Menu
    fill(0, 255, 0);
    text("Songs currently available: Crazy In Love by J2 (Press 1)", ((width/2)-(width/4)), ((height/2)-(height/4)));
  }*/
  if (Q==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (W==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (E==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (R==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (T==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (Y==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (U==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (I==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (O==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (P==true)
  {
    background(0);
    textSize(32);
    CrazyInLove.play();
    for (int x=0; x < CrazyInLove.bufferSize() - 1; x++)
    {
      r = random(255);
      g = random(255);
      b = random(255);
      // Mapping Frequency and Song Pos
      float x1 = map(x, 0, CrazyInLove.bufferSize(), 0, width);  
      float x2 = map(x+1, 0, CrazyInLove.bufferSize(), 0, width);  
      //float xpos = map(CrazyInLove.position(), 0, CrazyInLove.length(), 0, width);
      //Frequency Being Drawn
      stroke(r-100, g, b);
      line(x1, 150 + CrazyInLove.right.get(x)*375, x2, 150 + CrazyInLove.left.get(x+1)*375);
      line(x1, 550 + CrazyInLove.right.get(x)*375, x2, 550 + CrazyInLove.right.get(x+1)*375);
      line(x1, 950 + CrazyInLove.left.get(x)*375, x2, 950 + CrazyInLove.left.get(x+1)*375);
      noStroke();
    }
  }
  if (Z==true)
  { 
    noStroke();
    noFill();
    translate(width/2, height/2);
    background(0);
    RecursionSong1(1);
  }
}