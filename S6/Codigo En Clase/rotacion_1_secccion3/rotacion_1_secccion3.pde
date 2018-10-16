void setup() {
  size(500, 500);
}

void draw() {
  background(255);

  noFill();
  rect(0, 0, width, height);//FONDO
  ellipse(0, 0, 10, 10); //esquina

  pushMatrix();
  translate (100, 100);
  rotate(radians(45));
  fill(255, 0, 0);//ROJO
  rect(0,0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(200,200);
  rotate(radians(10));
  fill(0, 255, 0);//VERDE
  rect(0, 0, 30, 30);
  popMatrix();
}
