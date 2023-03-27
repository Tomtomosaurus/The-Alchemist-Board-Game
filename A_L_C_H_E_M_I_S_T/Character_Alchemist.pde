void Alchemist() {
  image(Alchemist, AlchemistX, AlchemistY, AlchemistWidth, AlchemistHeight);
  if (AlchemistX + AlchemistWidth > width) {
    AlchemistX -= AlchemistX-width+AlchemistWidth*2;
  }
  if (AlchemistY + AlchemistHeight > height*3/4) {
    AlchemistY -= AlchemistY-height*3/4+AlchemistHeight;
  }
  if (AlchemistX < height/8) {
    AlchemistX += -1 * AlchemistX;
  }
  if (AlchemistY < 0) {
    AlchemistY += AlchemistY*-2;
  }
  if (AlchemistX < width/10 && AlchemistY < height/8) {
    AlchemistWin = true;
    winAnimationAlchemist = true;
  }
  /*if (winAnimationAlchemist == true) {
    if (AlchemistX < width*9/10 && AlchemistY > height/8) {
      AlchemistX += width/10;
    }
  }<--- DO NOT TOUCH!!! FOR THOMAS TO CODE!!!*/
}

void movementAlchemist() {
  if (key=='t' || key=='T') {
    AlchemistY -= height/8;
  }
  if (key=='g' || key=='G') {
    AlchemistY += height/8;
  }
  if (key=='f' || key=='F') {
    AlchemistX -= width/10;
  }
  if (key=='h' || key=='H') {
    AlchemistX += width/10;
  }
}
