size(500, 200);
background(255);
strokeWeight(5);
smooth();

float xstep = 3;
float ystep = 20;
float lastx = -999;
float lasty = -999;
float y = 50;
float strokeweight = 1;
float wstep = 0.1;
int wmax = 10;
float rand = 0.5;

stroke(20, 50, 70);

for (float x=20; x<=480; x+=xstep) {

  rand = random(0.8);
  ystep = rand + 0.6;
  if (y * ystep > height) {
    y /= ystep;
  } else {
    y *= ystep;
  }
  wstep = rand + 0.6;
  if (strokeweight * wstep > wmax) {
    strokeweight /= wstep;
  } else {
    strokeweight *= wstep;
  }
  strokeWeight(strokeweight);
  if (lastx > -999) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
}
