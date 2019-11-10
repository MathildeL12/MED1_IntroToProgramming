class Trailcircle {

int trailSize = 80;
int[] trailX = new int[trailSize];
int[] trailY = new int[trailSize];


int size1 = 1;
int size2 = 2;
int opacity1= 80;
float opacity2 = random(100,255);
int R1= 255;
int R2= 0;
int G= 0;
int B1=0;
int B2=255;

Trailcircle() {}

void trailEffect () {
  
 trailX[0] = mouseX;
 trailY[0] = mouseY;
 
 // Draws my cube and adds trail effect
 for (int i = 0; i < trailSize; i++) {
   noStroke();
   fill(R1,G,B1,opacity1);
   ellipse(trailX[i], trailY[i], i*size1, i*size1);
   fill(R2,G,B2,opacity2);
   ellipse(trailX[i], trailY[i], i/size2, i/size2);
    
  }
  
  // Counts down
  for (int i = trailSize-1; i > 0; i--) {
    trailX[i] = trailX[i-1];
    trailY[i] = trailY[i-1];
  } 
  
}

}
