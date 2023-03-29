void Fatima() {
  image(Fatima, FatimaX, FatimaY, FatimaWidth, FatimaHeight);
  if (FatimaX + FatimaWidth > width) {
    FatimaX -= FatimaX-width+FatimaWidth;
  }
  if (FatimaY + FatimaHeight > height*3/4) {
    FatimaY -= FatimaY-height*3/4+FatimaHeight*2;
  }
  if (FatimaX < 0) {
    FatimaX += FatimaX*-2;
  }
  if (FatimaY < 0) {
    FatimaY += FatimaY*-1;
  }
  if (FatimaX < width/10 && FatimaY < height/8) {
    FatimaWin = true;
    winAnimationFatima = true;
  }
  if (winAnimationFatima) {
    if (FatimaX < width*9/10) {
      if (FatimaY < height/8) {
        FatimaX += width/10;
      }
      if (FatimaY > height/4 && FatimaY < height*3/8) {
        FatimaX += width/10;
      }
      if (FatimaY >= height/2 && FatimaY < height*5/8) {
        FatimaX += width/10;
      }
    }
    if (FatimaX > width/10) {
      if (FatimaY > height/8 && FatimaY < height/4) {
        FatimaX -= width/10;
      }
      if (FatimaY > height*3/8 && FatimaY < height/2) {
        FatimaX -= width/10;
      }
      if (FatimaY >= height*5/8 && FatimaY < height*3/4) {
        FatimaX -= width/10;
      }
    }
    if (FatimaY < height*5/8) {
      if (FatimaX < width/10 || FatimaX >= width*9/10) {
        FatimaY += height/8;
      }
    }
  }
}

void movementFatima() {
  if (key=='i' || key=='I') {
    FatimaY -= height/8;
  }
  if (key=='k' || key=='K') {
    FatimaY += height/8;
  }
  if (key=='j' || key=='J') {
    FatimaX -= width/10;
  }
  if (key=='l' || key=='L') {
    FatimaX += width/10;
  }
}
