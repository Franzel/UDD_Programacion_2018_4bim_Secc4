float tam = 30;
void setup() {
  size(500, 500);
}

void draw() {
  //background(255);

  if (mouseY > height/2 || mouseX > width/2) {
    fill(255, 0, 0); //rojo
    tam=random(50);
  } else {
    fill(0, 255, 0);//verde
    tam=10;
  }

  if (mousePressed) {
    ellipse(mouseX, mouseY, tam, tam);
  }
}
