//declaramos variables
float sizeX; 
float sizeY;

void setup() {
  size(400, 400);
  //asignamos valor a las variables
  sizeX   = 10;
  sizeY   = 100;
  background(255, 0, 0);
}

void draw() {
  //cambiamos el valor de las variables, en este caso con un random
  sizeX=random(50,100);
  sizeY=random(50,100);
  
  //condicional para mouse click
  if (mousePressed) {
    ellipse(mouseX, mouseY, sizeX, sizeY);
  }
}