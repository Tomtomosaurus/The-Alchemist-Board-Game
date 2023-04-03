float deg3, rad3;

void Golden() {
  rotate(rad3);
  image (Gold, width/6, -height/50-height/20, width*3/10, height/8);
  rotate(-rad3);
  fill(0);
  stroke(0);
}
