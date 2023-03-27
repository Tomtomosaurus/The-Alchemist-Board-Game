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
boolean start = false;

void setup() {
  background(255);
  Santiago = loadImage("Images/Santiago.png");
  SantiagoX = 0;
  SantiagoY = height*5/8;
  SantiagoWidth = width/20;
  SantiagoHeight = height/16;
  Fatima = loadImage("Images/Fatima.jpg");
  FatimaWidth = SantiagoWidth;
  FatimaHeight = SantiagoHeight;
  FatimaX = FatimaWidth;
  FatimaY = SantiagoY;
  Alchemist = loadImage("Images/Alchemist.jpg");
  AlchemistWidth = SantiagoWidth;
  AlchemistHeight = SantiagoHeight;
  AlchemistX = SantiagoX;
  AlchemistY = SantiagoY + SantiagoHeight;
  Englishman = loadImage("Images/Englishman.jpeg");
  EnglishmanX = SantiagoWidth;
  EnglishmanY = height*5/8 + SantiagoHeight;
  EnglishmanWidth = width/20;
  EnglishmanHeight = height/16;
  urimThummim = loadImage("Images/Urim_and_Thummim.jpg");
  startButtonX = width*3/8;
  startButtonY = height/2;
  startButtonWidth = width/4;
  startButtonHeight = height/6;
  numbersFont = createFont("arial", width/100);
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
    grid();
    characters();
    numbers();
  }
}
void mousePressed() {
  if (mouseX >= startButtonX && mouseY >= startButtonY && mouseX <= startButtonX+startButtonWidth && mouseY <= startButtonY+startButtonHeight) {
    start=true;
  }
}
void keyPressed() {
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
  }
  //
  if (key==CODED) {
    if (keyCode==UP) {
      EnglishmanY -= height/8;
    }
    if (keyCode==DOWN) {
      EnglishmanY += height/8;
    }
    if (keyCode==LEFT) {
      EnglishmanX -= width/10;
    }
    if (keyCode==RIGHT) {
      EnglishmanX += width/10;
    }
  }
}
