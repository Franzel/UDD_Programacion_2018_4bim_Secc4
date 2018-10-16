float a = 0;
void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  a++;
  rectMode(CENTER);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(a));
  rect(0,0,100,100);
  ellipse(200,0,30,30);
  popMatrix();

}
