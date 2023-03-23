float SantiagoX, SantiagoY, SantiagoWidth, SantiagoHeight;
float SpareX, SpareY, SpareWidth, SpareHeight;
color sand = color(255, 229, 180);
PImage Santiago;
PImage Spare;
void setup() {
  Santiago = loadImage("Images/Santiago.png");
  SantiagoX = 0;
  SantiagoY = height*5/8;
  SantiagoWidth = width/20;
  SantiagoHeight = height/16;
  //CMD F to replace variables to the charater we want
  Spare = loadImage("Images/Santiago.png");
  SpareX = width * 0 +74;
  SpareY = height*5/8;
  SpareWidth = width/20;
  SpareHeight = height/16;
  //
  fullScreen();
  Cursors();
}
void draw() {
  fill(255);
  rect(0, 0, width, height);
  grid();
  //Santiago Stuff
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
  //End Santiago Stuff
  //Start Spare Stuff
  image(Spare, SpareX, SpareY, SpareWidth, SpareHeight);
  if (SpareX + SpareWidth > width) {
    SpareX -= SpareX-width+SpareWidth;
  }
  if (SpareY + SpareHeight > height*3/4) {
    SpareY -= SpareY-height*3/4+SpareHeight*2;
  }
  if (SpareX < 0) {
    SpareX = SpareX*-1;
  }
  if (SpareY < 0) {
    SpareY += SpareY*-1;
  }
  //End Spare Stuff
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
   if (key == CODED) {
    if (keyCode == UP) 
    SpareY -= height/8;
  }
  if (key == CODED) {
    if (keyCode == DOWN) 
    SpareY += height/8;
  }
  if (key == CODED) {
    if (keyCode == LEFT)  
    SpareX -= width/10;
  }
  if (key == CODED) {
    if (keyCode == RIGHT)
    SpareX += width/10;
  }
}
