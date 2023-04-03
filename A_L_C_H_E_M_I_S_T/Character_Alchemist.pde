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
    if (keyPressed) {
      if (key == 'e' || key == 'E') {
        AlchemistWin = true;
        winAnimationAlchemist = true;
      }
    }
  }
  if (winAnimationAlchemist) {
    if (AlchemistX < width*9/10) {
      if (AlchemistY < height/8) {
        AlchemistX += width/10;
      }
      if (AlchemistY > height/4 && AlchemistY < height*3/8) {
        AlchemistX += width/10;
      }
      if (AlchemistY > height/2 && AlchemistY < height*5/8) {
        AlchemistX += width/10;
      }
    }
    if (AlchemistX > 0) {
      if (AlchemistY > height/8 && AlchemistY < height/4) {
        AlchemistX -= width/10;
      }
      if (AlchemistY > height*3/8 && AlchemistY < height/2) {
        AlchemistX -= width/10;
      }
      if (AlchemistY > height*5/8 && AlchemistY < height*3/4) {
        AlchemistX -= width/10;
      }
    }
    if (AlchemistY < height*5/8) {
      if (AlchemistX < width/10 || AlchemistX >= width*9/10) {
        AlchemistY += height/8;
      }
    }
  }
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
