
void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  noFill();
  for (int i=0; i<10; i++) {
    ellipse(width/2, height/2,  20*i, 20*i);
  }
  
}
