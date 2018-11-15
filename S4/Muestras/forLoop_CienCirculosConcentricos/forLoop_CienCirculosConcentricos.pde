//100 circulos concentricos
float espacio = 50;

void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  noFill();
  for (int i=0; i<100; i++) {
    ellipse(width/2, height/2, espacio*i, espacio*i); //en cada vuelta el tamaño aumenta
  }
}
