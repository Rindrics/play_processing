size(500, 200);
background(255);
strokeWeight(5);
smooth();

float xstep = 1;
float ystep = 20;
float lastx = -999;
float lasty = -999;
float y = 50;
int ysub = 10;

stroke(20, 50, 70);

for (float x=20; x<=480; x+=xstep) {
  ystep = random(20) - ysub;
  if (y - ystep <= height - ysub) {
    y += ystep;
  } else if (y + ystep >= height - ysub) {
    y -= ystep;
  } else {
    y += ystep;
  }
  if (lastx > -999) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
}
