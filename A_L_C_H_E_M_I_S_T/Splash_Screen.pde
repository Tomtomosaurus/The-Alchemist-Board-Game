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
PFont ruleLineFont;


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
      text("BACK", exitRulesButtonX, exitRulesButtonY, exitRulesButtonWidth, exitRulesButtonHeight);
      textAlign(LEFT);
      textFont(ruleLineFont);
      fill(255);
      text(" 1. Each character is controlled by one person.", width/6, height/6, width*2/3, height/6);
      text(" 2. You move foreward by the number shown on your die/number generator.", width/6, height*3/12, width*2/3, height/6);
      text(" 3. Your party may choose the maximum number on their generator (6 is recommended).", width/6, height*4/12, width*2/3, height/6);
      text(" 4. After a total rotation of 5 moves, click on Urim and Thummim. Everyone then votes on whether they should go up or down by the number shown. One use only.", width/6, height*5/12, width*2/3, height/6);
      text(" 5. If you have moves left over in a turn and  land on an end tile, turn around and go the other way.", width/6, height*6/12+height/24, width*2/3, height/6);
      text(" 6. If you land on the top of a distraction, go to the square on the bottom end of it.", width/6, height*7/12+height/24, width*2/3, height/6);
      text(" 7. If you land on the bottom of a traction, go to the square on the top end of it.", width/6, height*8/12+height/24, width*2/3, height/6);
      text(" 8. Only one may realize their personal legend. Good luck!", width/6, height*9/12+height/24, width*2/3, height/6);
    }
    //
    fill(255);
    textAlign(LEFT);
  }
}
