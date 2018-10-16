float tamX;
float tamY;
void setup() {
  size(800,400);
  tamX = width/4;
  tamY = height/4;
}

void draw() {
  rect(width - tamX, height - tamY, tamX, tamY);
  rect(0,0,tamX,tamY);
  rect(width-tamX,0,tamX,tamY);
  rect(0,height-tamY,tamX,tamY);
  ellipse(width/2,height/2,tamX,tamY);
}
