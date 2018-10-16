float a = 0;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);
  a = a + 0.01;
  
  translate(width/2, height/2);
  //ellipse(0, 0, 10, 10);

  for (int j=1; j<10; j++) {
    for (int i=0; i<36; i++) {
      pushMatrix();
      rotate(radians(10*i + a));
      fill(28*i,28*j,0);
      rect(20 * j, 0, 10, 10);
      popMatrix();
    }
  }
}
