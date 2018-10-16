void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);
  ellipse(width/2, height/2, 10, 10);

  for (int i=0; i<36; i++) {
    for (int j=0; j<100; j++) {
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(i*10));
      fill(j*40,0,0);
      rect(j*40, 0, j,j);
      popMatrix();
    }
  }
}
