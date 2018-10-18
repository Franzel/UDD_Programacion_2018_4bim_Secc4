void setup(){
  size(400,400);
  background(0,255,255);
}

void draw(){
  //cuadrado
  strokeWeight(20);
  fill(255,0,0);
  stroke(0);
  rect(100,100,200,200);
  
  //circulo
  noStroke();
  fill(255,255,0);
  ellipse(200,200,200,200);
  
  //lineas
  stroke(0);
  strokeWeight(2);
  line(0,0,400,400); // esta es la primera linea
  line(0,400,400,0);
  line(0,200,400,200);
  line(200,0,200,400);
  
  //triangulo
  fill(255);
  triangle(0,0,200,200,0,200);
}
