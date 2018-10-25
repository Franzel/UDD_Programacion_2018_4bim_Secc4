float r;
void setup() {
  size(400, 400);
}

void draw() {
  r = random(200,255);
  background(r);
  fill( random(255), random(0,5), random(0,255) );
  ellipse(mouseX, mouseY, random(50,60), random(50,56));
}
