float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float quitButtonTextX, quitButtonTextY, quitButtonTextWidth, quitButtonTextHeight;
PFont quitFont;

void quitButton() {
  if (mouseX >= quitButtonX && mouseY >= quitButtonY && mouseX <= quitButtonX + quitButtonWidth && mouseY <= quitButtonY + quitButtonHeight) {
    fill(150, 0, 0);
  } else {
    fill(255, 0, 0);
  }
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if (mouseX >= quitButtonX && mouseY >= quitButtonY && mouseX <= quitButtonX + quitButtonWidth && mouseY <= quitButtonY + quitButtonHeight) {
    fill(255);
  } else {
    fill(0);
  }
  textFont(quitFont);
  textAlign(CENTER, CENTER);
  text("QUIT", quitButtonTextX, quitButtonTextY, quitButtonTextWidth, quitButtonTextHeight);
  textAlign(LEFT);
}
