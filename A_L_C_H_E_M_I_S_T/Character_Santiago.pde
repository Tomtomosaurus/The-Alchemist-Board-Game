void Santiago() {
  image(Santiago, SantiagoX, SantiagoY, SantiagoWidth, SantiagoHeight);
  if (SantiagoX + SantiagoWidth > width) {
    SantiagoX -= SantiagoX-width+SantiagoWidth*2;
  }
  if (SantiagoY + SantiagoHeight > height*3/4) {
    SantiagoY -= SantiagoY-height*3/4+SantiagoHeight*2;
  }
  if (SantiagoX < 0) {
    SantiagoX += SantiagoX*-1;
  }
  if (SantiagoY < 0) {
    SantiagoY += SantiagoY*-1;
  }
  if (SantiagoX < width/10 && SantiagoY < height/8) {
    if (keyPressed) {
      if (key == 'e' || key == 'E') {
        SantiagoWin = true;
        winAnimationSantiago = true;
      }
    }
  }
  if (winAnimationSantiago) {
    if (SantiagoX < width*9/10) {
      if (SantiagoY < height/8) {
        SantiagoX += width/10;
      }
      if (SantiagoY >= height/4 && SantiagoY < height*3/8) {
        SantiagoX += width/10;
      }
      if (SantiagoY >= height/2 && SantiagoY < height*5/8) {
        SantiagoX += width/10;
      }
    }
    if (SantiagoX > 0) {
      if (SantiagoY >= height/8 && SantiagoY < height/4) {
        SantiagoX -= width/10;
      }
      if (SantiagoY >= height*3/8 && SantiagoY < height/2) {
        SantiagoX -= width/10;
      }
      if (SantiagoY >= height*5/8 && SantiagoY < height*3/4) {
        SantiagoX -= width/10;
      }
    }
    if (SantiagoY < height*5/8) {
      if (SantiagoX < width/10 || SantiagoX >= width*9/10) {
        SantiagoY += height/8;
      }
    }
  }
}
void movementSantiago() {
  if (key=='w' || key=='W') {
    SantiagoY -= height/8;
  }
  if (key=='s' || key=='S') {
    SantiagoY += height/8;
  }
  if (key=='a' || key=='A') {
    SantiagoX -= width/10;
  }
  if (key=='d' || key=='D') {
    SantiagoX += width/10;
  }
}
