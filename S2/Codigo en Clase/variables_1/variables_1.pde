float tam; //declarar variable
float posX;
float posY;

void setup() {
  size(500, 500);
  posX= 100;
  posY= 200;
  tam = 5; //asignar valor a la variable
}

void draw() {
  background(255);
  fill(tam,0,0); //usar para color
  tam = tam+1; //sumarle 1 en cada vuelta del loop
  posX = posX + 1;
  rect(posX, posY, tam, tam); //usarla para dibujar 
}
