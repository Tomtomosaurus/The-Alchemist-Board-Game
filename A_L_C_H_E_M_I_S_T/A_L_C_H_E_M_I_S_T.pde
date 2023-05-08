float SantiagoX, SantiagoY, SantiagoWidth, SantiagoHeight;
float FatimaX, FatimaY, FatimaWidth, FatimaHeight;
float AlchemistX, AlchemistY, AlchemistWidth, AlchemistHeight;
float EnglishmanX, EnglishmanY, EnglishmanWidth, EnglishmanHeight;
color sand = color(255, 229, 180);
color red = color(255, 0, 0);
color buttonFill;
color White = (#FFFFFF);
color green = (#00FF00);
color backgroundColor;
PImage Santiago;
PImage Fatima;
PImage Alchemist;
PImage Englishman;
PImage urimThummim;
PImage Treasure;
PImage Caravan;
PImage oasis;
PImage Alley;
PImage Sheep;
PImage Gold;
boolean start = false;
boolean SantiagoWin = false, FatimaWin = false, AlchemistWin = false, EnglishmanWin = false;
boolean winAnimationSantiago = false, winAnimationFatima = false, winAnimationAlchemist = false, winAnimationEnglishman = false;
boolean urimThummimPressed = false;
float degTSY, radTSY;
float deg1, rad1;
//Libraries and Dependancies

//

void setup() {
  background(150, 200, 255);
  setupPopulation();
  //
  fullScreen();
  Cursors();
}
void draw() {
  drawPopulation();
  splashScreen();
  if (start==true) {
    desertBackground();
    if (SantiagoWin==true || FatimaWin==true || AlchemistWin==true || EnglishmanWin==true) {
      image(Treasure, 0, height*5/8, width/10, height/8);
    }
    Caravan();
    Darkness();
    oasis();
    Golden();
    Sheeps();
    grid();
    characters();
    numbers();
    bottomBar();
    bottomBarMousePressed();
    resetButton();
  }
  quitButton();
  debugging();
}
void mousePressed() {
  if (start == false && mouseX >= startButtonX && mouseY >= startButtonY && mouseX <= startButtonX+startButtonWidth && mouseY <= startButtonY+startButtonHeight) {
    start=true;
  }
  if (mouseX >= quitButtonX && mouseY >= quitButtonY && mouseX <= quitButtonX + quitButtonWidth && mouseY <= quitButtonY + quitButtonHeight) exit();
  if (mouseX >= resetButtonX && mouseY >= resetButtonY && mouseX <= resetButtonX + resetButtonWidth && mouseY <= resetButtonY + resetButtonHeight) {
    SantiagoWin = false;
    winAnimationSantiago = false;
    FatimaWin = false;
    winAnimationFatima = false;
    AlchemistWin = false;
    winAnimationAlchemist = false;
    EnglishmanWin = false;
    winAnimationEnglishman = false;
    start = false;
    urimThummimPressed = false;
    rules = false;
  }
  if (start==false) {
    if (rules == false && mouseX >= rulesButtonX && mouseY >= rulesButtonY && mouseX <= rulesButtonX+rulesButtonWidth && mouseY <= rulesButtonY+rulesButtonHeight) {
      rules = true;
    }
    if (rules && mouseX >= exitRulesButtonX && mouseY >= exitRulesButtonY && mouseX <= exitRulesButtonX+exitRulesButtonWidth && mouseY <= exitRulesButtonY+exitRulesButtonHeight) {
      rules = false;
    }
  }
}
void keyPressed() {
  if (start==true) {
    charactersMovement();
  }
}
