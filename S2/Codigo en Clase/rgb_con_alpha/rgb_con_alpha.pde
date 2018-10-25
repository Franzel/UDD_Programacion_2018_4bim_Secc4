void setup() {
  size(500, 500);
}

void draw() {
  fill(255, 0, 0, random(255));
  ellipse(100, 200, 100, 100);
  fill(0, 0, 255, random(255));
  ellipse(150, 200, 100, 100);
}
