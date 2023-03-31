float SantiagoX, SantiagoY, SantiagoWidth, SantiagoHeight;
float FatimaX, FatimaY, FatimaWidth, FatimaHeight;
float AlchemistX, AlchemistY, AlchemistWidth, AlchemistHeight;
float EnglishmanX, EnglishmanY, EnglishmanWidth, EnglishmanHeight;
color sand = color(255, 229, 180);
color red = color(255, 0, 0);
color buttonFill;
color White = (#FFFFFF);
color green = (#00FF00);
PImage Santiago;
PImage Fatima;
PImage Alchemist;
PImage Englishman;
PImage urimThummim;
PImage Treasure;
PImage Caravan;
PImage oasis;
boolean start = false;
boolean SantiagoWin = false, FatimaWin = false, AlchemistWin = false, EnglishmanWin = false;
boolean winAnimationSantiago = false, winAnimationFatima = false, winAnimationAlchemist = false, winAnimationEnglishman = false;
boolean urimThummimPressed = false;
float degTSY, radTSY;
float deg1, rad1;

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
    FatimaWin = false;
    AlchemistWin = false;
    EnglishmanWin = false;
    start = false;
    urimThummimPressed = false;
  }
}
void keyPressed() {
  if (start==true) {
    charactersMovement();
  }
}
