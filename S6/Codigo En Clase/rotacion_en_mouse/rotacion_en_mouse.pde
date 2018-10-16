void setup() {
  size(600, 600);
}

void draw() {
  background(255,0,0);
  translate(mouseX, mouseY);
  rotate(radians(mouseX));
  fill(0);
  rect(0,0,width,height);
  fill(0, 255, 0);
  rect(0, 0, 100,100);//fondo verde
  
  rect(300,300,50,50);
}
