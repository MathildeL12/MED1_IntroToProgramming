class Flower{
  //CODE INSPIRED FROM FLOWEROBJECT FROM GITHUB FOLDER BY OLGA: https://github.com/Olga0512/MED1_IntroToProgramming
  
  //variables
  float r; //radius of petals, (controls overall size of flower)
  int NumPetals; //number of petals
  float x; // x position of the flower
  float y; // y position of the flower
  int ColPetals; //color for flower petals in hexadecimal
  int ColCenter; // color for flower center in hexadecimal
  int StrokeCol; // color for strokes in hexadecimal
  float StrokeW; // Weight of the strokes, aka thickness
  float xSpeed=random(1,5); //movement speed on x axis, set to random up to 5 so speed is varying.
  float ySpeed=random(1,5); //movement speed on y axis
  

//this is my constructer
Flower(float temp_r, int temp_NumPetals, float temp_x, float temp_y, int temp_ColPetals, int temp_ColCenter, int temp_StrokeCol, float temp_StrokeW ){
  //my parameters:
r=temp_r;
NumPetals= temp_NumPetals;
x= temp_x;
y= temp_y;
ColPetals= temp_ColPetals;
ColCenter= temp_ColCenter;
StrokeCol= temp_StrokeCol;
StrokeW= temp_StrokeW;

 }

  // my display function, which contains code for the flower itself (this is inspired from FlowerObject in Olgas Github Folder)
  void display()
  {
  float ballX;
  float ballY;
  
  fill(ColPetals);
  for (float i=0;i<PI*2;i+=2*PI/NumPetals) {

  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  stroke(StrokeCol);
  ellipse(ballX,ballY,r,r); 
  }
  stroke(StrokeCol);
  strokeWeight(StrokeW);
  fill(ColCenter);
  ellipse(x,y,r*1.2,r*1.2);
  }
 
  
  // my move function moves the flower on the x and y axis with a speed set to a random inbetween 1 and 5
  void move() //movement of the flower
  {
    x = x + xSpeed;
    y = y + ySpeed;


  }
  
  //my bounce function makes sure the flower stays inside the canvas, by moving in the other direction if the edge of the canvas is hit 
  void bounce() // bouncing off the edges
  {
     
  if (x > width){
  xSpeed= xSpeed-2;
  }
  
  if(x < 0){
  xSpeed = xSpeed + 2;
  }
    
    if(y > height){
    ySpeed= ySpeed -2;
    }

    if(y < 0){
    ySpeed = ySpeed + 2;
    }
    

  }
  
  

}
