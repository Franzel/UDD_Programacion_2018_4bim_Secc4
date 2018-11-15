int nElementos;

void setup() {
  background(0);
  size(500, 500);
  nElementos = 300;
}

void draw() {
  background(0);
  for (int i=0; i<nElementos; i++) {
    stroke(5*i, 5*i, 5*i);
    strokeWeight(3);
    line(0, 10*i, width, 10*i);
  }
}
