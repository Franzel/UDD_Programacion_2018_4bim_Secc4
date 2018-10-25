float posX;
float tam;

void setup() {
  size(800, 400);
  posX = 0;
  tam = 100;
}

void draw() {
 // background(0);
  posX = posX + 3;
  tam = tam + 1;
  fill(posX,255,255);
  ellipse(posX, height/2, tam, tam);
}
