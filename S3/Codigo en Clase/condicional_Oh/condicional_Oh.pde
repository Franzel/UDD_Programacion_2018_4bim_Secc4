void setup() {
  size(600, 600);
}

void draw() {
  
  //una manera de escribirlo
  if(mousePressed || keyPressed){
    ellipse(mouseX, mouseY, 30,30);
  }

  //lo mismo escrito de otra manera
  if (mousePressed) {
    if (keyPressed) {
      ellipse(mouseX, mouseY, 30, 30);
    }
  }
  
}
