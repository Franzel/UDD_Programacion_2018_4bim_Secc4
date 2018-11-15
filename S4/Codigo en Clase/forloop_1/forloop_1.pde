void setup() {
  size(500, 500);
}

void draw() {
  for (int i=0; i<20; i++) {
    fill(13*i);
    rect(10*i, height/2, 10*i, 10*i);
  }
}
