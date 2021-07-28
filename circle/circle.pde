size(500, 300);
background(255);
strokeWeight(5);
smooth();

int centx = 250;
int centy = 150;

strokeWeight(0.1);
stroke(20, 50, 70);
float x, y;
for (int i = 0; i < 500; i++) {
    float lastx = -999;
    float lasty = -999;
    float radiusNoise = random(10);
    float radius = 10;
    for (float ang = 0; ang <= 360 * 5; ang += 5) {
    radiusNoise += 0.05;
    radius += 0.5;
    float thisRadius = radius + (noise(radiusNoise) * 200) - 100;
    float rad = radians(ang);
    x = centx + (thisRadius * cos(rad));
    y = centy + (thisRadius * sin(rad));
    if (lastx > -999) {
        line(x, y, lastx, lasty);
    }
    lastx = x;
    lasty = y;
    }
}
