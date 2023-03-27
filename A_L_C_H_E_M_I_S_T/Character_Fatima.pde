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
}
