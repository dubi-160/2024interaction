//week03_2_void_setup_void_draw_fill_rect
PImage img;
void setup() {
  size(600, 400);
  img =loadImage("arufa.jpg");
}
void draw() {
  image(img, 0, 0);
  noStroke();
  fill(200, 200, 255, 128);
  rect(mouseX, mouseY, 70, 50);
}
