float [] largos = new float [15];
color [] colores = new color [15]; 
// float [] largos= { 10,30,40,29,134,23,5,278,17 };

void setup() {
  size(600, 500);
  colorMode(HSB, 255,100,100); //ver HSB en https://processing.org/reference/colorMode_.html
  for (int i=0; i<largos.length; i++) {
    largos[i] = random(10, 400);
    colores[i] = color(random(255), random(100), 200);
  }
}

void draw() {
  background(0);
  for (int i=0; i<largos.length; i++) {
    if (largos[i]>350) {
      fill(0, 100, 100);
    } else {
      fill(colores[i]);
    }
    rect(0, i*32, largos[i], 25);
    fill(0);
    text(i,5,18+i*32);
  }
}
