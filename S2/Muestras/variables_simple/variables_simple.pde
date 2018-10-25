///DECLARANDO VARIABLES

/// manera basica de declarar una variable
int x; //le estamos pidiendo al computador que guarde espacio en su memoria para un int llamado "x"

float posX; //idem, para un float llamado "posX"

//Shortcut para declarar mas de una variable al mismo tiempo
//Son todas del mismo tipo de data, en este caso son "integers", que aca se llaman "int"
int gato, perro, ardilla; 

// Podemos tambien asignar un valor a la variable al declararla.
int y = 100;
float posY = 200;

void setup() {  
  size(500, 500); //como convención siempre declaramos el tamaño de ventana primero
  x = 100; //asignamos un valor inicial a la variable x que decalaramos arriba
  posX = 200;// idem para posX  
  gato = 255;
  perro = 0;
  ardilla = 180;
}

void draw() {
  fill(gato,perro,ardilla); //usamos estas variables para el color. Sus nombres ridiculos ejemplifican que el nombre de una variable no tiene nada que ver con su uso. 
  rect(posX, posY, x, y); //usando las variables para darle forma posicion y tamaño a un rect
}
