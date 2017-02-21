void X(float bs){
  TheHills.play();
    for(int x = 0; x < TheHills.bufferSize() - 1; x++)
    {

    // MAPING FREQUENCY AND SONG POS
     xTwo = rTwo * sin(2*thetaTwo);
     yTwo = rTwo * cos(2*thetaTwo);
     //float posx = map(TheHills.position(), 0, TheHills.length(), 0, width);                         // SONG POS
     //thetaTwo= posx;
     //line( TheHills.right.get(x)*375, TheHills.left.get(x)*375, -TheHills.left.get(x)*375, -TheHills.right.get(x)*375 );
     bs *= 0.3;
     if (bs > 2) {
       smooth();   
       pushMatrix(); //Tree TEST TOP RIGHT
       rotate(theta2);   
       stroke(rr, rg, rb);
       line( TheHills.right.get(x)*400, TheHills.left.get(x)*400, xTwo, yTwo); 
       translate(bs, bs); 
       X(bs);       
       popMatrix();       
       pushMatrix(); //Tree TEST TOP LEFT
       rotate(-theta2);
       stroke(rg, rb, rr);
       line( TheHills.right.get(x)*400, TheHills.left.get(x)*400, -xTwo, -yTwo);
       translate(bs, bs);
       X(-bs);
       popMatrix();      
       pushMatrix(); //Tree TEST TOP LEFT
       rotate(-theta2);
       stroke(rb, rg, rr);
       line( TheHills.right.get(x)*400, TheHills.left.get(x)*400, -xTwo, yTwo);
       translate(bs, bs);
       X(bs);
       popMatrix();  
       pushMatrix(); //Tree TEST TOP LEFT
       rotate(-theta2);
       stroke(rr, rg, rb);
       line( TheHills.right.get(x)*400, TheHills.left.get(x)*400, xTwo, -yTwo);
       translate(bs, bs);
       X(-bs);
       popMatrix();  
      }
    }

}