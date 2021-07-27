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
int centrifuge = 0;
for (float ang = 0; ang <= 360; ang += 3) {
  float rad = radians(ang);
  x = centx + (radius * cos(rad)) - centrifuge;
  y = centy + (radius * sin(rad)) - centrifuge;
  point(x, y);
  centrifuge -= 1;
}
