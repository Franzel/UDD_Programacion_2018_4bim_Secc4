float tamX;
float tamY;
void setup() {
  size(400, 400);
  tamX = width/4;
  tamY = height/4;
}

void draw() {
  background(255, 0, 0);

  fill(0, 0, 255); //azul
  rect(0, 0, tamX, tamY); //esquina sup-izq

  fill(255, 255, 0);
  rect(width-tamX, 0, tamX, tamY); //esquina sup-der

  fill(0, 255, 0);
  rect(width - tamX, height - tamY, tamX, tamY);//esquina inf-der

  fill(0, 255, 255);
  rect(0, height-tamY, tamX, tamY);//esquina inf-izq

  fill(255);
  ellipse(width/2, height/2, tamX, tamY);//centro

  line(0, 0, width, height);
  line(0, height, width, 0);
}
