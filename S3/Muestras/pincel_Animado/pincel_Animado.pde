float tam;
float dir;
float vel;
float tamMax;
float tamMin;

void setup() {
  size(500, 500);
  tam=20;
  dir = 1;
  vel = 2;
  tamMax = tam*2;
  tamMin = tam/2;
}

void draw() {
  tam = tam + vel * dir;

  if (tam>tamMax) {
    dir = dir *-1;
  } 

  if (tam<tamMin) {
    dir = dir * -1;
  }

  if (mousePressed) {
    dibuja();
  }
}


void dibuja() {
  fill(0, tam*10, 0);
  ellipse(mouseX + tam/2, mouseY + tam/2, 30, 30);
  fill(0, tam*10, 0);
  ellipse(mouseX - tam/2, mouseY + tam/2, 30, 30);
  fill(tam*10, 0, 0, tam*10);
  ellipse(mouseX, mouseY, tam, tam);
}
