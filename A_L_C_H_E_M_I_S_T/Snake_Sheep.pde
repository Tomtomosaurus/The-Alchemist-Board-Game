void Sheeps() {
  scale(-1, 1);
  translate(-width/10, -height/1.8);
  rotate(rad1);
  stroke(150, 200, 255);
  image (Sheep, -width*9/20, height*5/16, -width*3/10, height/4);
  fill(150, 200, 255);
  rect(-width*9/20, height*1.5/5, -width*3/10, height/10);
  rect(-width*9/20, height/2, -width*3/10, height/11);
  scale(-1, 1);
  rotate(rad1);
  translate(-width/10, height/1.8);
  fill(0);
  stroke(0);
}
