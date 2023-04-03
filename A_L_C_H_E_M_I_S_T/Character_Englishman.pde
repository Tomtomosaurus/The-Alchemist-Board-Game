void Englishman() {
  image(Englishman, EnglishmanX, EnglishmanY, EnglishmanWidth, EnglishmanHeight);
  if (EnglishmanX + EnglishmanWidth > width) {
    EnglishmanX -= EnglishmanX-width+EnglishmanWidth;
  }
  if (EnglishmanY + EnglishmanHeight > height*3/4) {
    EnglishmanY -= EnglishmanY-height*3/4+EnglishmanHeight;
  }
  if (EnglishmanX < 0) {
    EnglishmanX = EnglishmanX*-1;
  }
  if (EnglishmanY < 0) {
    EnglishmanY += EnglishmanY*-2;
  }
  if (EnglishmanX < width/10 && EnglishmanY < height/8) {
    if (keyPressed) {
      if (key == 'e' || key == 'E') {
        EnglishmanWin = true;
        winAnimationEnglishman = true;
      }
    }
  }
  if (winAnimationEnglishman) {
    if (EnglishmanX < width*9/10) {
      if (EnglishmanY < height/8) {
        EnglishmanX += width/10;
      }
      if (EnglishmanY > height/4 && EnglishmanY < height*3/8) {
        EnglishmanX += width/10;
      }
      if (EnglishmanY > height/2 && EnglishmanY < height*5/8) {
        EnglishmanX += width/10;
      }
    }
    if (EnglishmanX > width/10) {
      if (EnglishmanY > height/8 && EnglishmanY < height/4) {
        EnglishmanX -= width/10;
      }
      if (EnglishmanY > height*3/8 && EnglishmanY < height/2) {
        EnglishmanX -= width/10;
      }
      if (EnglishmanY > height*5/8 && EnglishmanY < height*3/4) {
        EnglishmanX -= width/10;
      }
    }
    if (EnglishmanY < height*5/8) {
      if (EnglishmanX < width/10 || EnglishmanX >= width*9/10) {
        EnglishmanY += height/8;
      }
    }
  }
}

void movementEnglishman() {
  if (key==CODED) {
    if (keyCode==UP) {
      EnglishmanY -= height/8;
    }
    if (keyCode==DOWN) {
      EnglishmanY += height/8;
    }
    if (keyCode==LEFT) {
      EnglishmanX -= width/10;
    }
    if (keyCode==RIGHT) {
      EnglishmanX += width/10;
    }
  }
}
