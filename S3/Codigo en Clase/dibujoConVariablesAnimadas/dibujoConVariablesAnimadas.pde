float vel;
float dir;
float tam;

void setup() {
  size(500, 500);
  tam = 10;
  vel = 3;
  dir = 1;
}

void draw() {

  tam = tam + vel *dir;
  if ( tam<10 || tam>60) {
    dir = dir * -1;
  }

  if (mousePressed) {
    fill(tam*5, 0, 0);
    ellipse(mouseX, mouseY, tam, tam);
    fill(0, tam*2, 255-tam*3);
    ellipse(mouseX + 10, mouseY +10, tam, tam);
  }
}
