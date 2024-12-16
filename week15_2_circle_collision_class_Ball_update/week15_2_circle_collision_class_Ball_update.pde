//week15_2_circle_collision_class_Ball_update
void setup() {
  size(640, 360);
}
Ball ball= new Ball(100, 200, 20);
void draw() {
  ball.update();
  ball.display();
}
class Ball {
  float x, y, r;
  float vx, vy;
  Ball(int x0, int y0, int r0) {
    x= x0;
    y= y0;
    r= r0;
    vx = random(-10, +10);
    vy = random(-10, +10);
  }
  void update() {
    if (x+vx >640 || x+vx <0) vx = -vx;
    if (y+vy <0 || y+vy >360) vy = -vy;
    x +=vx;
    y+=vy;
  }
  void display() {
    ellipse(x, y, r+r, r+r);
  }
}
