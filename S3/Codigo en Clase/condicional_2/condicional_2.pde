float tam;
float posX, posY;

void setup() {
  size(400, 400);
  tam = 100;
}

void draw() {
  posX = mouseX;
  posY = mouseY;
  
  if (mousePressed && keyPressed) {
    fill(255,0,0);
    tam = 100;
  } else {
    fill(0,255,0);
    tam = 10;
  }
  ellipse(posX, posY, tam ,tam);
}
