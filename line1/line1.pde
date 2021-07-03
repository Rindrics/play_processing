size(500, 100);
background(255);
strokeWeight(5);
smooth();

int step = 10;
float lastx = -999;
float lasty = -999;
float y = 50;
int border = 20;

stroke(20, 50, 70);

for (int x=border; x<=width-border; x+=step) {
  if (lastx > -999) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
}
