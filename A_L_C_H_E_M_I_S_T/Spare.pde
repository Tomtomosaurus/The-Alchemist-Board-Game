/*
 float SpareX, SpareY, SpareWidth, SpareHeight;
 //
 PImage Spare;
 //
 Spare = loadImage("Images/Spare.jpg");
 SpareX = 0;
 SpareY = height*5/8;
 SpareWidth = width/20;
 SpareHeight = height/16;
 //
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
 //
 if (key=='w' || key=='W') {
 SpareY -= height/8;
 }
 if (key=='s' || key=='S') {
 SpareY += height/8;
 }
 if (key=='a' || key=='A') {
 SpareX -= width/10;
 }
 if (key=='d' || key=='D') {
 SpareX += width/10;
 }
 */
