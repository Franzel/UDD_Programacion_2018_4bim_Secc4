
void setup() {
  size(720, 400);
}


void draw() {
  background(255);

  //COLOR EN HSB////////////////
  fill(0);
  text("Color en HSB", 10, 15);
  colorMode(HSB, 360, 100, 100);
  for (int i=0; i<360; i++) {
    noStroke();
    fill(i, 100, 100);
    rect(i*2, 20, 1.5, 50);
  }
  //circulo
  float micolor = map(mouseX, 0, width, 0, 360);
  fill(micolor, 100, 100);
  ellipse (mouseX, 130, 100, 100);


  //COLOR EN RGB////////////////
  fill(0);
  text("Color en RGB", 10, 215);
  colorMode(RGB, 255, 255, 255);
  for (int i=0; i<255; i++) {
    noStroke();
    fill(i, 0, 0);
    rect(i*3, 220, 2.5, 50);
  }

  //circulo
  micolor = map(mouseX, 0, width, 0, 255);
  fill(micolor, 0, 0);
  ellipse (mouseX, 330, 100, 100);
}
