float resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight;
float resetButtonTextX, resetButtonTextY, resetButtonTextWidth, resetButtonTextHeight;
PFont resetFont;

void resetButton() {
  if (mouseX >= resetButtonX && mouseY >= resetButtonY && mouseX <= resetButtonX + resetButtonWidth && mouseY <= resetButtonY + resetButtonHeight) {
    fill(0, 0, 150);
  } else {
    fill(0, 0, 255);
  }
  rect(resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight);
  if (mouseX >= resetButtonX && mouseY >= resetButtonY && mouseX <= resetButtonX + resetButtonWidth && mouseY <= resetButtonY + resetButtonHeight) {
    fill(255);
  } else {
    fill(0);
  }
  textFont(resetFont);
  textAlign(CENTER, CENTER);
  text("RESET", resetButtonTextX, resetButtonTextY, resetButtonTextWidth, resetButtonTextHeight);
  textAlign(LEFT);
}
