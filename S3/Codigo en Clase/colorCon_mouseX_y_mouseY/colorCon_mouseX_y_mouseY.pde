void setup(){
  size(500,500);
}

void draw(){
  println(mouseX);
  fill(mouseX/2,mouseY/2,mouseX/2);
  ellipse(mouseX, mouseY, mouseX,mouseY);
}
