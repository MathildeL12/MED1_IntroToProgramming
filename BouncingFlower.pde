Flower f;
Flower f1;
Flower f2;
//VARIABLES:
float StrokeW = 2.5;
//variables for first flower f:
float r= 40;
float x= width/2;
float y= height/2;
int NumPetals= 6;
int PetalCol= #4961F2;
int CenterCol=#FCC44A;
int StrokeCol=#2F2983;
//variables for a second flower f1
float r1= 50;
float x1= 400;
float y1= 300;
int NumPetals1= 6;
int PetalCol1=#F7E432;
int CenterCol1=#67370A;
int StrokeCol1=#CB7915;
//variables for my third Flower f2
float r2= 20;
float x2= width/5;
float y2= width/5;
int NumPetals2= 8;
int PetalCol2=#DE5151;
int CenterCol2=#3E2E18;
int StrokeCol2=#760D0D;





void setup(){
size(600,600);
background(#91C486);
//variables for the parameters, so no hardcoded numbers :3


//initializing my object f of the class Flower

f= new Flower(r, NumPetals, x , y, PetalCol, CenterCol,StrokeCol,StrokeW );



//initializng my second flower object f1
f1 = new Flower(r1, NumPetals1, x1 , y1, PetalCol1, CenterCol1,StrokeCol1,StrokeW );




f2 = new Flower(r2, NumPetals2, x2 , y2, PetalCol2, CenterCol2,StrokeCol2,StrokeW);

}

void draw(){
 background(#91C486);
f.display(); //calling my display function
f.move(); //calling my move function
f.bounce(); //calling my bounce function
f1.display();
f1.move();
f1.bounce();
f2.display();
f2.FollowMouse();
f2.bounce();
}

void mousePressed(){
if(dist(mouseX,mouseY,f.x,f.y) <= f.r*1.2/2){  //more precise and simple version of defining the center of the flower as the clicking area
f.ColorChange(round(random(#000000,#ffffff)));
 }
  
if((mouseX >= f1.x -f1.r && mouseX <= f1.x + f1.r) && (mouseY >= f1.y - f1.r && mouseY <= f1.y + f1.r)){ //this is a more complicated version, and is less precise as it gives me a rectangle clickable area
f1.ColorChange(round(random(#000000,#ffffff)));
}

if((mouseX >= f2.x - f2.r && mouseX <= f2.x + f2.r) && (mouseY >= f2.y - f2.r && mouseY <= f2.y + f2.r)){
f2.ColorChange(round(random(#000000,#ffffff)));
}

}
