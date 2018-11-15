float tam;
float posX, posY, velX, velY, dirX, dirY;
float r, g, b;

void setup() {
  size(500, 600);
  tam = 50;
  posX = width/2;
  posY = height/2;
  velX = 20;
  dirX = -1;
  velY = 23;
  dirY = 1;
  r = 255;
  g = 255;
  b = 255;
}

void draw() {
  posX = posX + velX * dirX;
  if (posX<0  || posX>width) {
    dirX = dirX * -1;
    r = random(255);
    g = random(255);
    b = random(255);
    tam = random(100);
  }

  posY = posY + velY * dirY;
  if (posY<0  || posY>height) {
    dirY = dirY * -1;
    r = random(255);
    g = random(255);
    b = random(255);
    tam = random(100);
  }

  fill(r, g, b);
  ellipse(posX, posY, tam, tam);
}
