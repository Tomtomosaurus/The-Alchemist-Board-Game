float deg5, rad5;

void oasis() {
  rotate(rad5);
  image (oasis, -width/7, height*19/20, width*3/10, height/8);
  rotate(-rad5);
  fill(0);
  stroke(0);
}
