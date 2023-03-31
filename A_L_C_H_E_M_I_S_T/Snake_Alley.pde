float deg2, rad2;

void Darkness() {
  rotate(rad2);
  image (Alley, height/4-height/16, -width*9/10+width/80, width*3/10, height/8);
  rotate(-rad2);
  fill(0);
  stroke(0);
}
