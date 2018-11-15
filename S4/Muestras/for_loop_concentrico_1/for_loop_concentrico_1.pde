float r;
void setup() {
  size(500, 500);  
  r=45;
}
void draw() {
  background(255);
  fill(0, 255, 0);

  for (int i=0; i<30; i++) {
    fill(30+10*i, 50+2*i, 100, 5*i);
    ellipse(width/2, height/2, 15*i, 500-15*i); //juego con tamaño en X e Y
  }
}
