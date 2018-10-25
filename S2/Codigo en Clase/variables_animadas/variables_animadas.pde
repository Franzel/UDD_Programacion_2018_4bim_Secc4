float tam; //declarar variable
float posX;
float posY;

void setup() {
  size(500, 500);
  posX= 100;
  posY= 200;
  tam = 5; //asignar valor  inicial a la variable
}

void draw() {
  background(255);

  tam = tam + 1; //sumarle 1 en cada vuelta del draw
  posX = posX + 1; //sumarel 1 en cada vuelta del draw

  fill(tam, 0, 0); //usar para color
  rect(posX, posY, tam, tam); //usarla para dibujar
}
