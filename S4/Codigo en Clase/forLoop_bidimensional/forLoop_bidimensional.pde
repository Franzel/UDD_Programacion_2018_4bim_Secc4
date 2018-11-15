void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  for (int i= 0; i<100; i++) {
    for (int j= 0; j<100; j++) {
      fill(mouseX, mouseY, mouseX);
      rect(20*j, 20*i, 10, 10);
    }
  }
}
