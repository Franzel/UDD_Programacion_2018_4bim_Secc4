float a;
void setup() {
  size(400, 400);
  a = 0;
}

void draw() {
  a = a-5;
  background(255);
  fill(255);
  rect(0, 0, 10, 10);
  
  pushMatrix();
  rectMode(CENTER);
  translate(100,100);
  rotate(radians(a));
  fill(255, 0, 0);//rojo
  rect(0,0, 100, 100);
  popMatrix();
  
  fill(0, 0, 255);
  rect(250, 250, 40, 40);
}
