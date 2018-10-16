float a = 0;
void setup(){
  size(500,500);
}

void draw(){
  rectMode(CENTER);
  background(255);
  a = a + 0.01;

  
  for(int i=0; i<100;i++){
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(a*i));
    //rotate(mouseX *i /1000);
    rect(0,0,300-i*2,300-i*2);
    popMatrix();
    
  }
}
