int perro = 100; //creamos y asignamos valora a unca variable
float gato = perro*0.3; //creamos y asignamos valor a una variable

void setup() {
  size(300, 300);
}

void draw() {
  rect(perro, perro, gato, gato);//usamos estas variables para un rect
}