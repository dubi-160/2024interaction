//week08_2_RPG_background_640_480_rect_32_32
PImage img;
void setup() {
  size(640, 480); //15格=480,480/15=32小圖
  img=loadImage("640x480.png");
}
void draw() {
  background(img);
  for (int i=0; i<15; i++) { //高度480 對應y座標 
    for (int j=0; j<20; j++) { //寬度640 對應x座標
      noFill();
      rect(j*32, i*32, 32, 32); //小格子是32x32
    }
  }
}
