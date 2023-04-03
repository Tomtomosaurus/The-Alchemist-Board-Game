float urimThummimNumber;
String urimThummimNumberText;
PFont urimThummimNumberFont;

void bottomBar() {
  if (mouseX >= 0 && mouseY >= height*3/4 && mouseX <= width/5 && mouseY <= height*3/4+height/4) {
    tint(127.5, 255);
  }
  image(urimThummim, 0, height*3/4+height/500, width/5, height/4);
  noTint();
  textFont(urimThummimNumberFont);
  text(urimThummimNumberText, width/5+width/100, height);
  noStroke();
  fill(sand);
  if (urimThummimPressed == false) {
    rect(width/5, height*3/4+height/500, width, height);
  }
  if (urimThummimPressed) {
    if (urimThummimNumber >= 2 && urimThummimNumber < 10) {
      rect(width*3/10+width/60, height*3/4+width/500, width, height);
    }
    if (urimThummimNumber < 2) {
      rect(width*3/10-width/35, height*3/4+width/500, width, height);
    }
    if (urimThummimNumber >= 10 && urimThummimNumber < 11) {
      rect(width*4/10, height*3/4+width/500, width, height);
    }
    if (urimThummimNumber >= 11 && urimThummimNumber <12) {
      rect(width*3/10+width/60, height*3/4+width/500, width, height);
    }
    if (urimThummimNumber >= 12 && urimThummimNumber < 20) {
      rect(width*4/10-width/20, height*3/4+width/500, width, height);
    }
    if (urimThummimNumber >= 20 && urimThummimNumber < 21) {
      rect(width*4/10+width/20, height*3/4+width/500, width, height);
    }
    if (urimThummimNumber >= 21 && urimThummimNumber < 22) {
      rect(width*4/10-width/20, height*3/4+width/500, width, height);
    }
    if (urimThummimNumber >= 22 && urimThummimNumber < 100) {
      rect(width*4/10+width/40, height*3/4+width/500, width, height);
      rect(width*4/10, height*7/8, width, height);
    }
  }
  quitButton();
  textFont(quitFont);
  fill(255);
  text("QUIT", quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}
void bottomBarMousePressed() {
  if (mousePressed && urimThummimPressed == false && mouseX >= 0 && mouseY >= height*3/4 && mouseX <= width/5 && mouseY <= height*3/4+height/4) {
    urimThummimPressed = true;
  }
}
