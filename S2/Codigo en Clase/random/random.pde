float tam;
void setup() {
  size(400, 400);
  tam = 100;
}

void draw() {
  //rectMode(CENTER);
  //ellipseMode(CORNER);
  
  tam = random(50);
  fill(random(255), random(255), random(255));
  //ellipse(random(width), random(height), tam, tam);
  
  ellipse(mouseX,mouseY,100,100);
}
