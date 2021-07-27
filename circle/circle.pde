size(500, 300);
background(255);
strokeWeight(5);
smooth();

float radius = 100;
int centx = 250;
int centy = 150;

stroke(0, 30);
ellipse(centx, centy, radius*2, radius*2);

stroke(20, 50, 70);
float x, y;
float lastx = -999;
float lasty = -999;
float centrifuge = 0;
float offset = 0;
for (float ang = 0; ang <= 360 * 5; ang += 1) {
  float rad = radians(ang);
  if (ang % 2 == 0) {
    offset = 0;
  } else {
    offset = random(15);
  }
  x = centx + ((centrifuge + offset) * cos(rad));
  y = centy + ((centrifuge + offset) * sin(rad));
  point(x, y);
  centrifuge += 0.1;
}
