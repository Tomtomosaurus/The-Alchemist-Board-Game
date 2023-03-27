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
    EnglishmanWin = true;
    winAnimationEnglishman = true;
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
