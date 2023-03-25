float startButtonX, startButtonY, startButtonWidth, startButtonHeight;

void splashScreen() {
  if (start==false) {
    fill(sand);
    rect(0, 0, width, height);
    fill(0);
    rect(width/6, height/6, width*2/3, height*2/3);
    if (mouseX >= startButtonX && mouseY >= startButtonY && mouseX <= startButtonX+startButtonWidth && mouseY <= startButtonY+startButtonHeight) {
      tint(127.5, 127.5);
    } else {
      noTint();
    }
    image(urimThummim, startButtonX, startButtonY, startButtonWidth, startButtonHeight);
    noTint();
  }
}
