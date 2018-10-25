float tamX; //declarar la variable
float tamY;

void setup() {
  size(400, 400);
  tamX = width/4; //valor a la variable
  tamY = height/4;
}

void draw() {

  ellipse(width/2, height/2, tamY, tamY);
  rect(width-tamX, height-tamY, tamX, tamY);
}
