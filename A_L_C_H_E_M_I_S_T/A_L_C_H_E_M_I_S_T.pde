float SantiagoX, SantiagoY, SantiagoWidth, SantiagoHeight;
float FatimaX, FatimaY, FatimaWidth, FatimaHeight;
float AlchemistX, AlchemistY, AlchemistWidth, AlchemistHeight;
float EnglishmanX, EnglishmanY, EnglishmanWidth, EnglishmanHeight;
color sand = color(255, 229, 180);
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
float degTSY, radTSY;
float deg1, rad1;

void setup() {
  background(255);
  setupPopulation();
  //
  fullScreen();
  Cursors();
}
void draw() {
  splashScreen();
  if (start==true) {
    fill(sand);
    rect(0, 0, width, height);
    fill(0);
    if (SantiagoWin==true || FatimaWin==true || AlchemistWin==true || EnglishmanWin==true) {
      image(Treasure, 0, height*5/8, width/10, height/8);
    }
    Caravan();
    oasis();
    grid();
    characters();
    numbers();
    bottomBar();
  }
}
void mousePressed() {
  if (mouseX >= startButtonX && mouseY >= startButtonY && mouseX <= startButtonX+startButtonWidth && mouseY <= startButtonY+startButtonHeight) {
    start=true;
  }
}
void keyPressed() {
  if (start==true) {
    charactersMovement();
  }
}
