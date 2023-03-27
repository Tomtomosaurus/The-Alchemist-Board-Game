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
  if (EnglishmanX == SantiagoWidth && EnglishmanY == SantiagoHeight) EnglishmanWin = true;
}
