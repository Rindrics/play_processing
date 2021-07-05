size(500, 100);
background(255);
strokeWeight(5);
smooth();

int xstep = 10;
float ystep = 20;
float lastx = -999;
float lasty = -999;
float y = 50;

stroke(20, 50, 70);

for (int x=20; x<=480; x+=xstep) {
  ystep = random(20) - 10;
  if (y + ystep >= 95) {
    y += ystep;
  } else {
    y -= ystep;
  }
  if (lastx > -999) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
}
