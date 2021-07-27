size(500, 100);
background(255);
strokeWeight(5);
smooth();

float xstep = 3;
float ystep = 20;
float lastx = -999;
float lasty = -999;
float lastystep = 0;
float y = 50;
float strokeweight = 1;
float wstep = 0.1;
int wmax = 5;
float rand = 0.5;
int cnt = 0;
float cntbreak = 60;

stroke(20, 50, 70);

for (float x=20; x<=480; x+=xstep) {
  if (cnt >= cntbreak) {
    cntbreak = random(50) + 5;
    rand = random(0.5);
    cnt = 0;
  }
  ystep = rand + 0.24;
  float coef = ystep + lastystep;
  if (y * coef > height) {
    y /= coef;
  } else {
    y *= coef;
  }
  if (y < 10) {
    rand += 0.2;
  }
  wstep = rand + 0.71;
  if (strokeweight * wstep > wmax) {
    strokeweight /= wstep;
  } else {
    strokeweight *= wstep;
    rand = random(0.5);
  }
  strokeWeight(strokeweight);
  if (lastx > -999) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
  lastystep = ystep;
  cnt += 1;
}
