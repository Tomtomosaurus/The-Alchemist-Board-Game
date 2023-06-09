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
  numbersFont = createFont("Papyrus", width/100);
  startFont = createFont("Papyrus", width/30);
  Treasure = loadImage("Images/Treasure.png");
  Caravan = loadImage("Images/Caravan.jpeg");
  oasis = loadImage("Images/oasis.png");
  Alley = loadImage("Images/alley.jpeg");
  Gold = loadImage("Images/gold.jpeg");
  Sheep = loadImage("Images/iwantover.png");
  degTSY = 360;
  radTSY = radians(degTSY);
  deg1 = -27.5;
  rad1 = radians(deg1);
  deg2 = 90;
  rad2 = radians(deg2);
  deg3 = 15;
  rad3 = radians(deg3);
  deg4 = -45;
  rad4 = radians(deg4);
  deg5 = -75;
  rad5 = radians(deg5);
  urimThummimNumber = random(1, 60);
  urimThummimNumberText = String.valueOf(urimThummimNumber);
  urimThummimNumberFont = createFont("Papyrus", height*5/16);
  titleFont = createFont("Papyrus", height/15);
  titleWidth = width*2/3;
  titleHeight = height/6;
  titleX = width/6;
  titleY = height/6;
  subtitleFont = createFont("Papyrus", height/30);
  subtitleX = titleX;
  subtitleY = titleY+titleHeight/2;
  subtitleWidth = titleWidth;
  subtitleHeight = titleHeight;
  ruleLineFont = createFont("Papyrus", width/70);
}
void drawPopulation() {
  if (start==false && rules) {
    quitButtonWidth = width/10;
    quitButtonHeight = height/20;
    quitButtonX = width/2+quitButtonWidth/2;
    quitButtonY = height*5/6-quitButtonHeight;
    quitFont = createFont("Papyrus", height/40);
  }
  if (start==false && rules == false) {
    quitButtonWidth = width/10;
    quitButtonHeight = height/20;
    quitButtonX = width/2-quitButtonWidth/2;
    quitButtonY = height*5/6-quitButtonHeight;
    quitFont = createFont("Papyrus", height/40);
  }
  if (start) {
    quitButtonWidth = width/5;
    quitButtonHeight = height/8;
    quitButtonX = width - quitButtonWidth;
    quitButtonY = height - quitButtonHeight;
    quitFont = createFont("Papyrus", height/20);
  }
  quitButtonTextWidth = quitButtonWidth;
  quitButtonTextHeight = quitButtonHeight;
  quitButtonTextX = quitButtonX;
  quitButtonTextY = quitButtonY;
  resetFont = quitFont;
  resetButtonWidth = quitButtonWidth;
  resetButtonHeight = quitButtonHeight;
  resetButtonX = quitButtonX;
  resetButtonY = quitButtonY - resetButtonHeight;
  resetButtonTextWidth = quitButtonWidth;
  resetButtonTextHeight = quitButtonHeight;
  resetButtonTextX = quitButtonX;
  resetButtonTextY = quitButtonY - resetButtonHeight;
  rulesFont = quitFont;
  rulesButtonX = quitButtonX;
  rulesButtonY = startButtonY - startButtonHeight/2;
  rulesButtonWidth = quitButtonWidth;
  rulesButtonHeight = quitButtonHeight;
  exitRulesButtonWidth = quitButtonWidth;
  exitRulesButtonHeight = quitButtonHeight;
  exitRulesButtonX = width*5/6-rulesButtonWidth;
  exitRulesButtonY = height*5/6-rulesButtonHeight;
}
