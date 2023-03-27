void setupPopulation() {
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
  Treasure = loadImage("Images/Treasure.png");
}
void drawPopulation() {
}
