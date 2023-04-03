float deg4, rad4;

void Sheeps() {
  rotate(rad4);
  image (Sheep, -width/5, height/2.5, width*3/10, height/8);
  rotate(-rad4);
  fill(0);
  stroke(0);
}
