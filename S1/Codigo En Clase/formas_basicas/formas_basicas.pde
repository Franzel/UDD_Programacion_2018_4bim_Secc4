void setup(){
  size(400,400);
  background(255,100,0);
}

void draw(){
  fill(255,255,0);
  noStroke();
  rect(100,100,200,200);
  
  fill(0,255,0);
  strokeWeight(3);
  stroke(0);
  ellipse(200,200,200,200);
  
  stroke(0,255,255);
  strokeWeight(1);
  line(0,400,400,0);
  strokeWeight(4);
  line(0,0,400,400);
  
}
