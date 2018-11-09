float posX, posY;

void setup() {
  size(400, 400);
}

void draw() {
  posX = mouseX;
  posY = mouseY;
  if (mousePressed) {
    if ( mouseX>width/3 && mouseX<width/3 * 2 && mouseY>height/3 && mouseY<height/3*2) {
      fill(255);
      ellipse(posX, posY, 50, 50);
    }else{
      fill(255,0,0);
      rect(posX, posY, 50, 50);
    }
  }
}
