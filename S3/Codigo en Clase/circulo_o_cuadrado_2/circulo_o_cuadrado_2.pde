void setup() {
  size(500, 500);
}

void draw() {
  //background(0);
  if (mouseY>height/2 && mouseX > width/2) {
    ellipse(mouseX, mouseY, 10, 10);
  } else {
    rect(mouseX, mouseY, 20, 20);
  }
}
