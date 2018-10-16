float sepX, sepY;
void setup() {
  size(500, 500);
  sepX = 30;
  sepY = 30;
}

void draw() {
  //sepX = mouseX;
  //sepY = mouseY;
  background (255);
  for (int i=0; i<50; i++) {
    for (int j=0; j<50; j++) {
      fill(20*i, 20*j, i*j);
      ellipse(sepX*i, sepY*j, 30,30 );
    }
  }
}
