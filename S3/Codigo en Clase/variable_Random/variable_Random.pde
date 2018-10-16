float r;
float g;
float b;
void setup() {
  size(500, 500);
}

void draw() {
  //background(255);
  r = random(255);
  g = random(255);
  b = random(255);
  
  //background(r, g, b);
  fill(r,g,b);
  ellipse(mouseX, mouseY, 50,50);
  
}
