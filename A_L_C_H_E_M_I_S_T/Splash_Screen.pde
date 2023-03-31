float startButtonX, startButtonY, startButtonWidth, startButtonHeight;
PFont startFont;
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
float subtitleX, subtitleY, subtitleWidth, subtitleHeight;
PFont subtitleFont;
float rulesButtonX, rulesButtonY, rulesButtonWidth, rulesButtonHeight;
PFont rulesFont;
boolean rules = false;
float exitRulesButtonX, exitRulesButtonY, exitRulesButtonWidth, exitRulesButtonHeight;


void splashScreen() {
  if (start==false) {
    if (rules==false) {
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
      fill(255);
      textAlign(CENTER, CENTER);
      textFont(titleFont);
      text("THE ALCHEMISTS' QUEST", titleX, titleY, titleWidth, titleHeight);
      textFont(subtitleFont);
      text("A JOURNEY THROUGH DISTRACTIONS AND TRACTIONS", subtitleX, subtitleY, subtitleWidth, subtitleHeight);
      if (mouseX >= rulesButtonX && mouseY >= rulesButtonY && mouseX <= rulesButtonX+rulesButtonWidth && mouseY <= rulesButtonY+rulesButtonHeight) {
        fill(0, 0, 127.5);
      } else {
        fill(0, 0, 255);
      }
      rect(rulesButtonX, rulesButtonY, rulesButtonWidth, rulesButtonHeight);
      if (mouseX >= rulesButtonX && mouseY >= rulesButtonY && mouseX <= rulesButtonX+rulesButtonWidth && mouseY <= rulesButtonY+rulesButtonHeight) {
        fill(127.5);
      } else {
        fill(255);
      }
      textFont(rulesFont);
      text("RULES", rulesButtonX, rulesButtonY, rulesButtonWidth, rulesButtonHeight);
      fill(0, 0, 255);
    }
    if (rules) {
      fill(0);
      rect(width/6, height/6, width*2/3, height*2/3);
      textAlign(CENTER, CENTER);
      if (mouseX >= exitRulesButtonX && mouseY >= exitRulesButtonY && mouseX <= exitRulesButtonX+exitRulesButtonWidth && mouseY <= exitRulesButtonY+exitRulesButtonHeight) {
        fill(0, 0, 127.5);
      } else {
        fill(0, 0, 255);
      }
      rect(exitRulesButtonX, exitRulesButtonY, exitRulesButtonWidth, exitRulesButtonHeight);
      if (mouseX >= exitRulesButtonX && mouseY >= exitRulesButtonY && mouseX <= exitRulesButtonX+exitRulesButtonWidth && mouseY <= exitRulesButtonY+exitRulesButtonHeight) {
        fill(127.5);
      } else {
        fill(255);
      }
      text("RULES", exitRulesButtonX, exitRulesButtonY, exitRulesButtonWidth, exitRulesButtonHeight);
      textAlign(LEFT);
    }
    //
    fill(255);
    textAlign(LEFT);
  }
}
