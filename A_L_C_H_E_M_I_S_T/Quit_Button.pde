void quitButton() {
  if ( mouseX> quitX && mouseX< quitX+QuitButtonW && mouseY> quitY && mouseY< quitY+QuitButtonH ) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }
  //End Hover-over
  fill(buttonFill);
  rect(quitX, quitY, QuitButtonW, QuitButtonH);
  fill(White);
  //Population
  QuitTX = StartX*1.5;
  QuitTY = StartY;
  QuitTW = StartW;
  QuitTH = StartH;
  //
  textAlign(CENTER, CENTER);
  //textFont("TimesNewRomanPS-BoldItalicMT", bigSize);
  text(quitText, QuitTX, QuitTY, QuitTW, QuitTH);
}
