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
}
