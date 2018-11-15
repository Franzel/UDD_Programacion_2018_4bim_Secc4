void setup() {
  size(400, 400);
}

void draw() {
  //background(255);
  if (mousePressed) {
    //"pmouse" es una variable que guarda la posicion del mouse en el cuadro anterior al actual
    //podemos dibujar una linea entre donde esta el mouse ahora y donde estaba justo antes 
    line(mouseX, mouseY, pmouseX, pmouseY);
    float d = dist(mouseX, mouseY, pmouseX, pmouseY);
    ellipse(mouseX, mouseY, d, d);
  }
}
