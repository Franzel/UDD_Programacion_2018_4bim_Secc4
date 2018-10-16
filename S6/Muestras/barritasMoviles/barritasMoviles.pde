int alto = 50;
int ancho = 10;
int espacio = 2;
int nElementos = 500 / (ancho+espacio);
float [] velocidades = new float[nElementos];
float [] posicionesY = new float[nElementos];
color [] colores = new color[nElementos];


void setup() {
  size(500, 500);
  colorMode(HSB, 250, 100, 100);

  for (int i=0; i<velocidades.length; i++) {
    velocidades[i] = random (-4, 4);
    posicionesY[i] = height/2;
    //valores[i] = random(height);
    colores[i] = color(random(250), 100, 100);
  }
}

void draw() {
  background(0);

  for (int i=0; i<velocidades.length; i++) {
    if (posicionesY[i]>height - alto || posicionesY[i]<0) {
      velocidades[i] *=  -1 ;
    }

    fill(colores[i]);
    posicionesY[i] += velocidades[i];
    rect((ancho+espacio)*i, posicionesY[i], ancho, alto);
  }
}
