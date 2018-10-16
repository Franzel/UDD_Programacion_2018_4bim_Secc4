float tiriton;

void setup() {
  size(500, 500);
  tiriton = 10;
}

void draw() {
  ellipse(width/2 + tiriton, height/2 + tiriton, 50, 50);
  if (mousePressed) {
    tirita();
  }
}

void tirita() {
  tiriton = random(-10, 10);
}
