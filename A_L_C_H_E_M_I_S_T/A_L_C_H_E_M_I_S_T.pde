float SantiagoX, SantiagoY, SantiagoWidth, SantiagoHeight;
float FatimaX, FatimaY, FatimaWidth, FatimaHeight;
float AlchemistX, AlchemistY, AlchemistWidth, AlchemistHeight;
<<<<<<< HEAD
=======
float EnglishmanX, EnglishmanY, EnglishmanWidth, EnglishmanHeight;
>>>>>>> 78ab505c1be1a0d14a41352c8d44270da541da91
color sand = color(255, 229, 180);
color red = color(255, 0, 0);
color buttonFill;
color White = (#FFFFFF);
color green = (#00FF00);
PImage Santiago;
PImage Fatima;
PImage Alchemist;
<<<<<<< HEAD
void setup() {
  Santiago = loadImage("Images/Santiago.png");
  SantiagoX = 0;
  SantiagoY = height*5/8;
  SantiagoWidth = width/20;
  SantiagoHeight = height/16;
  Fatima = loadImage("Images/Fatima.jpg");
  FatimaX = SantiagoWidth;
  FatimaY = height*5/8;
  FatimaWidth = width/20;
  FatimaHeight = height/16;
  Alchemist = loadImage("Images/Alchemist.jpg");
  AlchemistX = 0;
  AlchemistY = height*5/8 + SantiagoHeight;
  AlchemistWidth = width/20;
  AlchemistHeight = height/16;
=======
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

void setup() {
  background(150, 200, 255);
  setupPopulation();
>>>>>>> 78ab505c1be1a0d14a41352c8d44270da541da91
  //
  fullScreen();
  Cursors();
}
void draw() {
<<<<<<< HEAD
  fill(255);
  rect(0, 0, width, height);
  grid();
  image(Santiago, SantiagoX, SantiagoY, SantiagoWidth, SantiagoHeight);
  if (SantiagoX + SantiagoWidth > width) {
    SantiagoX -= SantiagoX-width+SantiagoWidth*2;
  }
  if (SantiagoY + SantiagoHeight > height*3/4) {
    SantiagoY -= SantiagoY-height*3/4+SantiagoHeight*2;
  }
  if (SantiagoX < 0) {
    SantiagoX += SantiagoX*-1;
  }
  if (SantiagoY < 0) {
    SantiagoY += SantiagoY*-1;
  }
  //
  image(Fatima, FatimaX, FatimaY, FatimaWidth, FatimaHeight);
  if (FatimaX + FatimaWidth > width) {
    FatimaX -= FatimaX-width+FatimaWidth;
  }
  if (FatimaY + FatimaHeight > height*3/4) {
    FatimaY -= FatimaY-height*3/4+FatimaHeight*2;
  }
  if (FatimaX < 0) {
    FatimaX = FatimaX*-1;
  }
  if (FatimaY < 0) {
    FatimaY += FatimaY*-1;
  }
  //
  image(Alchemist, AlchemistX, AlchemistY, AlchemistWidth, AlchemistHeight);
  if (AlchemistX + AlchemistWidth > width) {
    AlchemistX -= AlchemistX-width+AlchemistWidth*2;
  }
  if (AlchemistY + AlchemistHeight > height*3/4) {
    AlchemistY -= AlchemistY-height*3/4+AlchemistHeight;
  }
  if (AlchemistX < 0) {
    AlchemistX += AlchemistX*-1;
  }
  if (AlchemistY < 0) {
    AlchemistY += AlchemistY*-2;
  }
  fill(sand);
  rect(0, height*3/4, width, height);
=======
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
>>>>>>> 78ab505c1be1a0d14a41352c8d44270da541da91
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
<<<<<<< HEAD
  if (key=='w' || key=='W') {
    SantiagoY -= height/8;
  }
  if (key=='s' || key=='S') {
    SantiagoY += height/8;
  }
  if (key=='a' || key=='A') {
    SantiagoX -= width/10;
  }
  if (key=='d' || key=='D') {
    SantiagoX += width/10;
  }
  //
  if (key=='i' || key=='I') {
    FatimaY -= height/8;
  }
  if (key=='k' || key=='K') {
    FatimaY += height/8;
  }
  if (key=='j' || key=='J') {
    FatimaX -= width/10;
  }
  if (key=='l' || key=='L') {
    FatimaX += width/10;
  }
  //
  if (key=='t' || key=='T') {
    AlchemistY -= height/8;
  }
  if (key=='g' || key=='G') {
    AlchemistY += height/8;
  }
  if (key=='f' || key=='F') {
    AlchemistX -= width/10;
  }
  if (key=='h' || key=='H') {
    AlchemistX += width/10;
=======
  if (start==true) {
    charactersMovement();
>>>>>>> 78ab505c1be1a0d14a41352c8d44270da541da91
  }
}
