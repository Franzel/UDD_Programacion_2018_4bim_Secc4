void setup() {
  size(600,600);
}

void draw() {
  //background(255);
  if (mouseX>width/3 && mouseX<width/3*2 && mouseY>height/3 && mouseY<height/3*2 && mousePressed) {
    fill(255,0,0);
    ellipse(mouseX, mouseY, 20,20);
  } else {
    fill(0,255,0);
    rect(mouseX, mouseY, 20, 20);
  }
}
