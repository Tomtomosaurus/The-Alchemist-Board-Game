void oasis() {
  scale(-1, 1);
  fill(sand);
  stroke(sand);
  translate(0, -height/1.5);
  rotate(rad1);
  image (oasis, -width/2, height*10/16, -width*6/10, height/2);
  scale(-1, 1);
  rotate(rad1);
  translate(0, height/1.5);
  fill(0);
  stroke(0);
}
