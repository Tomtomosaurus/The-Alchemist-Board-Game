float startButtonX, startButtonY, startButtonWidth, startButtonHeight;
PFont startFont;

void splashScreen() {
  if (start==false) {
    fill(sand);
    rect(0, 0, width, height);
    fill(0);
    rect(width/6, height/6, width*2/3, height*2/3);
    textFont(startFont);
    if (mouseX >= startButtonX && mouseY >= startButtonY && mouseX <= startButtonX+startButtonWidth && mouseY <= startButtonY+startButtonHeight) {
      fill(127.5);
    } else {
      fill(255);
    }
    textAlign(CENTER, CENTER);
    text("START", startButtonX, startButtonY, startButtonWidth, startButtonHeight);
    fill(0);
    textAlign(LEFT);
    quitButton();
  }
}
