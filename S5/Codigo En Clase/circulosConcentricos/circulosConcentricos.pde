float sepa;
void setup() {
  size(600, 600);
  sepa = 40;
}

void draw() {
  background(255);
  noFill();
  sepa = mouseX;
  
  for (int i=0; i<10; i++) {
    ellipse(width/2, height/2, sepa*i, sepa*i);
  }
}
