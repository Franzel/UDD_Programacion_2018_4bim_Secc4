color miColor;

void setup() {
  size(500, 500);
  miColor = color(255,0,0);

}

void draw() {
  miColor = color(random(255),0,0);
  
  dibujaCirculo(random(width), random(height), random(50), miColor);
}

void dibujaCirculo(float px, float py, float t, color c) {
  fill(c);
  ellipse(px,py,t,t);
}
