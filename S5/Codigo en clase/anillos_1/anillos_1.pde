float a;
void setup() {
  size(400, 400);
  rectMode(CENTER);
  a=0;
}

void draw() {
  background(249);
  a = a+ 0.05;
  for (int w=0; w<3; w++) {
    pushMatrix();
    translate(200*w, 200);
    for (int i=0; i<30; i++) {
      for (int j=0; j<36; j++) {
        pushMatrix();
        //ellipse(0, 0, 5, 5);
        rotate(radians(10*j - a*i));
        fill(20*i, 0, 0);
        ellipse(12*i, 0, 10, 10);
        popMatrix();
      }
    }
    popMatrix();
  }
}
