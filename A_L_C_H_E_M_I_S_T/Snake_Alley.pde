void Darkness() {
  scale(-1, 1);
  translate(-width/2.75, -height/11);
  rotate(rad1);
  stroke(150, 200, 255);
  image (Alley, -width*9/20, height*3/16, -width*3/10, height/8);
  fill(150, 200, 255);
  scale(-1, 1);
  rotate(rad1);
  translate(-width/2.75, height/11);
  fill(0);
  stroke(0);
}
