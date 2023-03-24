float SantiagoX, SantiagoY, SantiagoWidth, SantiagoHeight;
float FatimaX, FatimaY, FatimaWidth, FatimaHeight;
float AlchemistX, AlchemistY, AlchemistWidth, AlchemistHeight;
float EnglishmanX, EnglishmanY, EnglishmanWidth, EnglishmanHeight;
color sand = color(255, 229, 180);
PImage Santiago;
PImage Fatima;
PImage Alchemist;
PImage Englishman;

void setup() {
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
  //
  fullScreen();
  Cursors();
}
void draw() {
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
    FatimaX += FatimaX*-2;
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
  if (AlchemistX < height/8) {
    AlchemistX += -1 * AlchemistX;
  }
  if (AlchemistY < 0) {
    AlchemistY += AlchemistY*-2;
  }
  //
  image(Englishman, EnglishmanX, EnglishmanY, EnglishmanWidth, EnglishmanHeight);
  if (EnglishmanX + EnglishmanWidth > width) {
    EnglishmanX -= EnglishmanX-width+EnglishmanWidth;
  }
  if (EnglishmanY + EnglishmanHeight > height*3/4) {
    EnglishmanY -= EnglishmanY-height*3/4+EnglishmanHeight;
  }
  if (EnglishmanX < 0) {
    EnglishmanX = EnglishmanX*-1;
  }
  if (EnglishmanY < 0) {
    EnglishmanY += EnglishmanY*-2;
  }
  //
  fill(sand);
  rect(0, height*3/4, width, height);
}
void mousePressed() {
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
  if (key=='k' || keyCode=='K') {
    FatimaY += height/8;
  }
  if (key=='j' || keyCode=='J') {
    FatimaX -= width/10;
  }
  if (key=='l' || keyCode=='L') {
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
