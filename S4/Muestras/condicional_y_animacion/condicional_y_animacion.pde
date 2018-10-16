float maxTam;
float minTam;
float dir;
float tam;
float vel;

void setup() {
  size(500, 500);
  minTam = 10;
  maxTam = 100;
  tam = 50;
  dir = 1;
  vel = 2.5;
}

void draw() {
  //background(50);

  //condicional
  if (tam>maxTam) {
    dir = dir * -1;
  }
  if (tam<minTam) {
    dir = dir * -1;
  }
  
  //algoritmo para animar
  //esto dice: en cada cuadro, sumale* una cierta cantidad('vel'), y multiplica por la direccion
  //*Como la direccion es 1 o -1, es basicamente sumar o restar
  tam += vel * dir;
  
  //solo al final dibujamos
  fill(tam*2, 0, 0);
  ellipse(mouseX, mouseY, tam, tam);
  ellipse(100, 100, tam+40, tam+40); //como 'tam' es una variable, podemos sumarle al tamaño de la elipse
}
