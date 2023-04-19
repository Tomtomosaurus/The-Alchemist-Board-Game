//Global Variables
int t = hour();

void nightMode() {
  if (t >=20 || t<=7) {
    tint(125, 255);
     backgroundColor = color(random(100, 255), random(255), 0);
    println("nightMode ON");
  } else {
    backgroundColor = color(random(100, 255), random(255), random(255));
    println("nightMode OFF");
  }
}
