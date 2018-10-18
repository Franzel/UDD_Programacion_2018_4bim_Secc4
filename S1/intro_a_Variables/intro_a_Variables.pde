float posX;

void setup() {
  size(500, 500);
  posX = 0;
}

void draw() {
  //ellipse(mouseX, 100, 100, 100);
  posX = posX + 10;
  ellipse(posX, 200, 30, 30);
}
