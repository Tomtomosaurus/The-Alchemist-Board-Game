float SantiagoX, SantiagoY;
color sand = color(255, 229, 180);
PImage Santiago;

void setup() {
  Santiago = loadImage("Images/Santiago.png");
  SantiagoX = 0;
  SantiagoY = height*5/8;
  //
  fullScreen();
  rect(0, 0, width, height);
  grid();
  fill(sand);
  rect(0, height*3/4, width, height);
  Cursors();
}
void draw() {
  image(Santiago, SantiagoX, SantiagoY, width/16, height/16);
}
