Flower f;
Flower f1;

void setup(){
size(600,600);
background(#91C486);
//variables for the parameters, so no hardcoded numbers :3
float r= 40;
int NumPetals= 6;
float x= width/2;
float y= height/2;
int PetalCol= #4961F2;
int CenterCol=#FCC44A;
float StrokeW = 2.5;
int StrokeCol=#2F2983;


//initializing my object f of the class Flower
f= new Flower(r, NumPetals, x , y, PetalCol, CenterCol,StrokeCol,StrokeW );

//making a new flower f1 with 3 new variables for the colors
int PetalCol1=#F7E432;
int CenterCol1=#67370A;
int StrokeCol1=#CB7915;
//initializng my second flower object f1
f1 = new Flower(r, NumPetals, x , y, PetalCol1, CenterCol1,StrokeCol1,StrokeW );

}

void draw(){
 background(#91C486);
f.display(); //calling my display function
f.move(); //calling my move function
f.bounce(); //calling my bounce function
f1.display();
f1.move();
f1.bounce();
  
}
