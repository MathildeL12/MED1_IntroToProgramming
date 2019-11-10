
//code inspired from: https://processing.org/tutorials/arrays/
//made the assignment in collabroration with Hossein Sanboli Med1
Trailcircle mycircle;



void setup() { 
  size(800, 600);

 rectMode(CENTER);
  
  mycircle = new Trailcircle();
}

void draw() {
  background(0);
  
  
  mycircle.trailEffect();
    
 
 
  
}
