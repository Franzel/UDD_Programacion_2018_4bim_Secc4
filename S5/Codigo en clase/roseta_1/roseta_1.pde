float a;
void setup() {
  size(400, 400);
  rectMode(CENTER);
  a=0;
}

void draw() {
  background(249);
  //noFill();
  a = a+0.1;
 
  translate(width/2, height/2);
  
  for (int i=0; i<24; i++) {
    pushMatrix();
    rotate(radians(a*i));
    fill(255- i*10,i*5,i*8);
    rect(0,0, 300 - 10*i, 300 - 10*i);
    popMatrix();
  }
}
