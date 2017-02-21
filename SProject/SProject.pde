// MENU BOOLEANS
boolean MENU;      // OPEN THE MENU SCREEN
boolean HELP;      // OPEN THE HELP SCREEN
boolean runonce;
// SONGS
boolean SONG1;     // PLAY SONG #1
boolean SONG2;     // PLAY SONG #2
boolean SONG3;     // PLAY SONG #3
boolean SONG4;     // PLAY SONG #4
boolean SONG5;     // PLAY SONG #5
boolean SONG6;     // PLAY SONG #6
boolean SONG7;     // PLAY SONG #7
boolean SONG8;     // PLAY SONG #8
boolean SONG9;     // PLAY SONG #9

//KEY BOOLEANS
boolean Q; 
boolean W;
boolean E;
boolean T;
boolean Y;
boolean U;
boolean I;
boolean O;
boolean Z;
boolean X;
boolean C;

//PROGRAM BOOLEANS
boolean RESET;                                                                              // RESET THE PROGRAM
boolean FREEZE;                                                                             // FREEZE THE PROGRAM
                             
// MUSIC KEYS
boolean PAUSE;                                                                              // PAUSE THE MUSIC
boolean REWIND;                                                                             // REWIND THE MUSIC
// CALLING CLASSES
void setup() {
  // BASE 
  size(1500, 800);
  // STARING BOOLEANS
  MENU = true;
  // STARTING VARIABLES
  rTwo = height * 0.45;
  theta = 0;
  thetaTwo = 0;
  theta2 = 0;
  thetaThree = 0;
  theta_music = 0;
  theta_vel = 0;
  theta_acc = 0.0000001;

  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
  // LOADING IN IMAGES
  MBI = loadImage("MBI.jpg");
  MBI.resize(1500, 800);
  HBI = loadImage("HBI.jpg");
  HBI.resize(1500, 800);

  // LOADING IN THE SONGS
  minim = new Minim(this);
  HOLLOW = minim.loadFile("HOLLOW.mp3");                                                 // XX1) Hollow By: Tori Kelly
  SOS = minim.loadFile("SOS.mp3");                                                       // 2) The Sound of Silence By: Disturbed
  RUN = minim.loadFile("RUN.mp3");                                                       // 3) Runaway By: Galantis
  PANDA = minim.loadFile("PANDA.mp3");                                                   // 4) Panda By: Designer
  KRYP = minim.loadFile("KRYP.mp3");                                                     // 5) Kryptonite By: Three Doors Down
  JAH = minim.loadFile("JAH.mp3");                                                       // 6) Jekyll and Hyde By: Jonathan Thulin
  TITANIUM = minim.loadFile("TITANIUM.mp3");                                             // 7) Titanium By: David Guetta (MB Version)
  SCHOOLSOUT = minim.loadFile("SCHOOLSOUT.mp3");                                         // 8) Schools Out By: Alice Cooper
  MONSTER = minim.loadFile("MONSTER.mp3");                                               // 9) Monster By: Skillet
  FRU = minim.loadFile("FRU.mp3");                                                       // 1) U By: Folly Ray
  SendThemOff = minim.loadFile("SendThemOff.mp3");                                       // X) Send Them off By: Bastille
  AintMyFault = minim.loadFile("AintMyFault.mp3");                                       // X) AintMyFault By: Zara Larson
  TheHills = minim.loadFile("TheHills.mp3");                                             // X) The Hills By: The Weeknd
  // FRAMERATE
  frameRate(30);
}

void draw() {
  // BASIS FOR EVERYTHING
  float a = (mouseX / (float) height) * 90;                                                 // THETA CALC
  float a2 = (width/ (float) height) *90;
  theta = radians(a);                                                                      // THETA CONVERTER
  theta2 = radians(a2);
  theta_music = radians(a2);                                                              // THETA CONVERTER
  textSize(16);
  rr = random(255);
  rg = random(255);
  rb = random(255);
  // MENU KEYS
  if (MENU == true)                                                                        // MENU
  {
    background(MBI);
    fill(0, g, b);
    textAlign(CENTER);
    textSize(32);
    text("Welcome to Java in Processing", width/2, height/4);
    fill(r, 0, 0);
    textSize(24);
    text("Q For Recursion Tree", width/4.5, height/2);
    text("W For Polar Equations", width/2, height/2);
    text("E For Recursion Boxes", width/1.25, height/2);
    text("R to Reset the Program", width/4.5, height/1.5);
    text("T For Recursion Tree", width/2, height/1.5);
    //text("Q For Recursion Tree");
    //text("Q For Recursion Tree");


  }
  if (RESET == true)                                                                       // RESET
  {
  }
  if (FREEZE == true)                                                                      // FREEZE
  {
  }
  
  // PROGRAM KEYS
  if (Q == true)
  {
    background(0);
    translate(width/2 , height/2+200);
    stroke(0, g, 0);
    tree(175, -90);
  }
  if (W == true)
  {
    if (runonce == true)
    {
      background(0);
      runonce = false;
    }
    translate(width/2, height/2);
    noStroke();
    stroke(rr, rg, rb);
    fill(rg, rr, rb);
    Orb(50, 50);
  }
  if (E == true)
  {
    noFill();
    noStroke();
    background(255);
    rectMode(CENTER);
    boxes(width/2, height/2, width/2);
  }
  if (T == true)
  {
    noFill();
    fill(0);
    rect(width,height, width, height);
    background(0);
    fill(0);
    translate(width/2, height/2);
    //fill(rg, rr, rb);
    stroke(rr, rg, rb);
    Orb(10, 10);
    noFill();
    noStroke();
  }
  if (Y == true)
  {
    noFill();
    fill(0);
    rect(width,height, width, height);
    translate(width/2, height/2);
    noStroke();
    noFill();
    background(0);
    stroke(rr, rg, rb);
    TT(100);
  }
  if (U == true)
  {
    noFill();
    fill(0);
    rect(width,height, width, height);
    translate(width/2, height/2);
    noStroke();
    noFill();
    background(0);
    //stroke(rr, rg, rb);
    X(100);
  }
  if (I == true)
  {
  }
  if (O == true)
  {
  }
  // MUSIC KEYS
  if ( SONG1 == true)
  { 
    noFill();
    noStroke();
    fill(0);
    background(0);
    rect(width, height, width, height);
    //background(0);
    FRU.play();                                                                       // PLAY SONG
    for(int x = 0; x < FRU.bufferSize() - 1; x++)
    {
    r = random(255);
    g = random(255);
    b = random(255);
    // MAPING FREQUENCY AND SONG POS
    float x1 = map( x, 0, FRU.bufferSize(), 0, width );                                  // BUFFER SIZE RIGHT
    float x2 = map( x+1, 0, FRU.bufferSize(), 0, width );                                // BUFFER SIZE LEFT
    float posx = map(FRU.position(), 0, FRU.length(), 0, width);                         // SONG POS
    // FREQUENCY BEING DRAWN
    stroke(0, 0, b);                                                                     // TOP LINE COLR
    line( x1, 350 + FRU.right.get(x)*275, x2, 350 + FRU.right.get(x+1)*275 );             // TOP LINE
    stroke(0, g, 0);                                                                     // MIDDLE LINE COLOR
    //line( x1, 475 + FRU.left.get(x)*175, x2, 475 + FRU.left.get(x+1)*175 );              // MIDDLE LINE
    stroke(r, g, b);                                                                     // BOTTOM LINE COLOR (DURATION OF THE SONG)
    //line(posx, 750 + FRU.right.get(x)*175, posx, 750 + FRU.left.get(x+1)*175);           // BOTTOM LINE ( FREQUNCY BAR + MUSIC TIMER) 
    stroke(0, 0, 255);                                                                   // DIVIDER LINE COLOR TOP
    //line( x1, 162.5, x2, 162.5);                                                         // DIVIDER LINE TOP   
    stroke(255, 0, 0);                                                                   // DIVIDER LINE COLOR MIDDLE
    //line( x1, 475, x2, 475 );                                                            // DIVIDER LINE MIDDLE
    stroke(0, 255, 0);                                                                   // DIVIDER LINE COLOR BOTTOM
    //line( x1, 750, x2, 750 );                                                            // DIVIDER LINE BOTTOM
    }       
    noStroke();     
    fill(0);                                                                             // TIME BACKGROUND COLOR
    rect(width/3, 950, 700, 100);                                                        // BACKGROUND FOR TIMER
    fill(0, 255, 0);                                                                     // TIMER COLOR
    int second = FRU.position()/1000;                                                 // CONVERTING MILISECONDS TO SECONDS
    int minutes = second/60;                                                             // CONVERTING SECONDS TO MINUTES
    text(+minutes+" Minutes : "+second+" Seconds", width/2-225, 1000);                   // TIMER IN SECONDS
    fill(0, 100, 200);                                                                   // TEXT COLOR 
    text("Playing: U: Folly Ray", (width/2)-300, height-300);                                   // SONG TITLE
  }
  if ( SONG2 == true)
  {
    background(0);
    noFill();
    noStroke();
    fill(0);
    rect(width, height, width, height);
    //background(0);
    MONSTER.play();                                                                       // PLAY SONG
    for(int x = 0; x < MONSTER.bufferSize() - 1; x++)
    {
    r = random(255);
    g = random(255);
    b = random(255);
    // MAPING FREQUENCY AND SONG POS
    float x1 = map( x, 0, MONSTER.bufferSize(), 0, width );                                  // BUFFER SIZE RIGHT
    float x2 = map( x+1, 0, MONSTER.bufferSize(), 0, width );                                // BUFFER SIZE LEFT
    float posx = map(MONSTER.position(), 0, MONSTER.length(), 0, width);                         // SONG POS
    // FREQUENCY BEING DRAWN
    stroke(0, 0, b);                                                                     // TOP LINE COLR
    line( x1, 350 + MONSTER.right.get(x)*375, x2, 350 + MONSTER.right.get(x+1)*375 );             // TOP LINE
    stroke(0, g, 0);                                                                     // MIDDLE LINE COLOR
    //ine( x1, 475 + MONSTER.left.get(x)*175, x2, 475 + MONSTER.left.get(x+1)*175 );              // MIDDLE LINE
    stroke(r, g, b);                                                                     // BOTTOM LINE COLOR (DURATION OF THE SONG)
    //line(posx, 750 + MONSTER.right.get(x)*175, posx, 750 + MONSTER.left.get(x+1)*175);           // BOTTOM LINE ( FREQUNCY BAR + MUSIC TIMER) 
    stroke(0, 0, 255);                                                                   // DIVIDER LINE COLOR TOP
    //line( x1, 162.5, x2, 162.5);                                                         // DIVIDER LINE TOP   
    stroke(255, 0, 0);                                                                   // DIVIDER LINE COLOR MIDDLE
    //line( x1, 475, x2, 475 );                                                            // DIVIDER LINE MIDDLE
    stroke(0, 255, 0);                                                                   // DIVIDER LINE COLOR BOTTOM
    //line( x1, 750, x2, 750 );                                                            // DIVIDER LINE BOTTOM
    }       
    noStroke();     
    fill(0);                                                                             // TIME BACKGROUND COLOR
    rect(width/3, 950, 700, 100);                                                        // BACKGROUND FOR TIMER
    fill(0, 255, 0);                                                                     // TIMER COLOR
    int second = MONSTER.position()/1000;                                                 // CONVERTING MILISECONDS TO SECONDS
    int minutes = second/60;                                                             // CONVERTING SECONDS TO MINUTES
    text(+minutes+" Minutes : "+second+" Seconds", width/2-225, 1000);                   // TIMER IN SECONDS
    fill(0, 100, 200);                                                                   // TEXT COLOR 
    text("Playing: U: Folly Ray", (width/2)-300, 900);                                   // SONG TITLE
  }
  if ( SONG3 == true)
  {
    background(0);
    noFill();
    noStroke();
    fill(0);
    rect(width, height, width, height);
    //background(0);
    JAH.play();                                                                       // PLAY SONG
    for(int x = 0; x < JAH.bufferSize() - 1; x++)
    {
    r = random(255);
    g = random(255);
    b = random(255);
    // MAPING FREQUENCY AND SONG POS
    float x1 = map( x, 0, JAH.bufferSize(), 0, width );                                  // BUFFER SIZE RIGHT
    float x2 = map( x+1, 0, JAH.bufferSize(), 0, width );                                // BUFFER SIZE LEFT
    float posx = map(JAH.position(), 0, JAH.length(), 0, width);                         // SONG POS
    // FREQUENCY BEING DRAWN
    stroke(0, 0, b);                                                                     // TOP LINE COLR
    line( x1, 350 + JAH.right.get(x)*375, x2, 350 + JAH.right.get(x+1)*875 );             // TOP LINE
    stroke(0, g, 0);                                                                     // MIDDLE LINE COLOR
    //ine( x1, 475 + JAH.left.get(x)*175, x2, 475 + JAH.left.get(x+1)*175 );              // MIDDLE LINE
    stroke(r, g, b);                                                                     // BOTTOM LINE COLOR (DURATION OF THE SONG)
    //line(posx, 750 + JAH.right.get(x)*175, posx, 750 + JAH.left.get(x+1)*175);           // BOTTOM LINE ( FREQUNCY BAR + MUSIC TIMER) 
    stroke(0, 0, 255);                                                                   // DIVIDER LINE COLOR TOP
    //line( x1, 162.5, x2, 162.5);                                                         // DIVIDER LINE TOP   
    stroke(255, 0, 0);                                                                   // DIVIDER LINE COLOR MIDDLE
    //line( x1, 475, x2, 475 );                                                            // DIVIDER LINE MIDDLE
    stroke(0, 255, 0);                                                                   // DIVIDER LINE COLOR BOTTOM
    //line( x1, 750, x2, 750 );                                                            // DIVIDER LINE BOTTOM
    }       
    noStroke();     
    fill(0);                                                                             // TIME BACKGROUND COLOR
    rect(width/3, 950, 700, 100);                                                        // BACKGROUND FOR TIMER
    fill(0, 255, 0);                                                                     // TIMER COLOR
    int second = JAH.position()/1000;                                                 // CONVERTING MILISECONDS TO SECONDS
    int minutes = second/60;                                                             // CONVERTING SECONDS TO MINUTES
    text(+minutes+" Minutes : "+second+" Seconds", width/2-225, 1000);                   // TIMER IN SECONDS
    fill(0, 100, 200);                                                                   // TEXT COLOR 
    text("Playing: U: Folly Ray", (width/2)-300, 900);                                   // SONG TITLE
  }
  if ( SONG4 == true)
  {
    translate(width/2, height/2);
    noFill();
    fill(r, g , b);
    stroke(r, g, b);
    background(0);
    Test(5, 5);
  }
  if ( SONG5 == true)
 {
    translate(width/2, height/2);
    noFill();
    fill(r, g , b);
    stroke(r, g, b);
    background(0);
    Test2(5, 5);
  }
  if ( SONG6 == true)
  {
    translate(width/2, height/2);
    noFill();
    fill(r, g , b);
    stroke(r, g, b);
    background(0);
    Test3(5, 5);
  }
  if ( SONG7 == true)
  {
    translate(width/2, height/2);
    noFill();
    fill(r, g , b);
    stroke(r, g, b);
    background(0);
    Test4(5, 5);
  }
  if ( SONG8 == true)
  {
    translate(width/2, height/2);
    noFill();
    fill(r, g , b);
    stroke(r, g, b);
    background(0);
    Test5(5, 5);
  }
  if ( SONG9 == true)
  {
    translate(width/2, height/2);
    noFill();
    fill(r, g , b);
    stroke(r, g, b);
    background(0);
    Test(5, 5);
  }
  if (PAUSE == true)
  {
    translate(width/2, height/2);
    noFill();
    fill(r, g , b);
    stroke(r, g, b);
    background(0);
    Test(5, 5);
  }
  if (REWIND == true)
  {
    translate(width/2, height/2);
    noFill();
    fill(r, g , b);
    stroke(r, g, b);
    background(0);
    Test(5, 5);
  }

}