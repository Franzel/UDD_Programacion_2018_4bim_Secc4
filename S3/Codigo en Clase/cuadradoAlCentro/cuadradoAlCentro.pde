void setup() {
  size(500, 500);
}

void draw() {
  if (mouseX > width/3 && mouseX<width/3*2 && mouseY>height/3 && mouseY<height/3*2) {
    fill(255, 0, 0); //rojo
    ellipse(mouseX,mouseY,random(30),random(30));
  } else {
    fill(0, 255, 0);//verde
    rect(mouseX, mouseY,30,30);
  }

}
