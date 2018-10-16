float a = 0;
void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  fill(0, 255, 0);
  rect(0, 0, width, height);//fondo verde

  a = a + 10;
  pushMatrix();
  translate(100, 100);
  rotate(radians(a));
  fill(255, 0, 0);
  rect(0, 0, 100, 100);//ROJO
  popMatrix();

  pushMatrix();
  translate(300, 300);
  rotate(radians(a * -1));
  fill(0, 0, 255);
  rect(0,0, 50, 50);//azul
  popMatrix();
}
