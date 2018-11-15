float velX, dirX, velY, dirY, tam, posX, posY;

void setup() {
  size(500, 600);

  velX = random(5, 15);
  dirX = -1;

  velY = random(5, 15);
  dirY = -1;

  tam = 50;
  posX = 200;
  posY = 300;
}

void draw() {
  background(0);

  //Calculos Para la horizontal
  if (posX<0 || posX>width) {
    dirX = dirX * -1;
  }
  posX = posX + velX * dirX; //esto anima, en cada vuelta le suma o le resta velX (dependiendo de el signo de 'dirX')

  //Calculos Para la vertical
  if (posY<0 || posY>height) {
    dirY = dirY * -1;
  }
  posY = posY + velY * dirY; ////esto anima, en cada vuelta le suma o le resta velY (dependiendo de el signo de 'dirY')

  //dibujamos al final
  ellipse(posX, posY, tam, tam);
}
