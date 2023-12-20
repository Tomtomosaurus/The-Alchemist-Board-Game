float urimThummimNumber;
String urimThummimNumberText;
PFont urimThummimNumberFont;

void bottomBar() {
  if (mouseX >= 0 && mouseY >= height*3/4 && mouseX <= width/5 && mouseY <= height*3/4+height/4) {
    tint(127.5, 255);
  }
  image(urimThummim, 0, height*3/4+height/500, width/5, height/4);
  noTint();
  fill(sand);
  /*
  
  if (urimThummimPressed) {
    
  }
  quitButton();
  textFont(quitFont);
  fill(255);
  //text("QUIT", quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}
void bottomBarMousePressed() {
  if (mousePressed && urimThummimPressed == false && mouseX >= 0 && mouseY >= height*3/4 && mouseX <= width/5 && mouseY <= height*3/4+height/4) {
    urimThummimPressed = true;
  }
}
void urimthummim() {
  if (mousePressed && urimThummimPressed == true && mouseX >= 0 && mouseY >= height*3/4 && mouseX <= width/5 && mouseY <= height*3/4+height/4) {
    urimThummimPressed = false;
  }
}
