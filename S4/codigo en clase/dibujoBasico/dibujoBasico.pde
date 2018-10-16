float tam, vel, dir;
void setup() {
  tam = 50;
  vel = 5;
  dir = 1;
  size(500, 500);
  background(255);
}
void draw() {
  //noStroke();
  if (tam>100 || tam<10) {
    dir = dir * -1;
  }
  tam = tam + vel * dir;
  if (mousePressed) {
    fill(tam*2,tam*vel,tam*vel*2, tam*2);
    ellipse(mouseX, mouseY, tam, tam);
    fill(tam, tam/2, tam*2, tam);
    ellipse(mouseX + tam/2, mouseY, tam, tam);
  }
  if(keyPressed){
    background(255);
  }
}
