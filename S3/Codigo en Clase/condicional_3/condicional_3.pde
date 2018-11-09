float tam;
color miColor;
float posX, posY;

void setup() {
  size(400, 400);
  tam = 100;
  miColor = color(255);
}

void draw() {
  posX = mouseX;
  posY = mouseY;

  fill(miColor);
  if (mousePressed) {
    ellipse(posX, posY, tam, tam);
  }
}

void keyPressed() {
  if (key == '1') {
    tam = 10;
    miColor = color(255,0,0);
  } else if (key == '2') {
    tam = 200;
    miColor = color(0,255,255);
  } else {
    miColor = color(255);
    tam = 100;
  }
}
