float urimThummimNumber;
String urimThummimNumberText;
PFont urimThummimNumberFont;

void bottomBar() {
  if (mouseX >= 0 && mouseY >= height*3/4 && mouseX <= width/5 && mouseY <= height*3/4+height/4) {
    tint(127.5, 255);
  }
  image(urimThummim, 0, height*3/4, width/5, height/4);
  noTint();
  textFont(urimThummimNumberFont);
  text(urimThummimNumberText, width/5+width/100, height*97.5/100);
}
