float SantiagoX, SantiagoY, SantiagoWidth, SantiagoHeight;
color sand = color(255, 229, 180);
PImage Santiago;

void setup() {
  Santiago = loadImage("Images/Santiago.png");
  SantiagoX = 0;
  SantiagoY = height*5/8;
  SantiagoWidth = width/20;
  SantiagoHeight = height/16;
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
}
