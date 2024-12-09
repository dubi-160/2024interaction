//week14_4_draw_lines_rain
PImage img;
void setup() {
  size(500, 500);
  img= createImage(500, 500, RGB);//用來畫圖的畫布
}//換黑背景
ArrayList<PVector>p=new ArrayList<PVector>();
void draw() {
  background(img);
  for(PVector pp :p){
    ellipse(pp.x, pp.y, 20, 20);
    
  }
}
void mouseDragged() {
  background(img);
  stroke(random(255), random(255), random(255));
  line(mouseX, mouseY, pmouseX, pmouseY);
  loadPixels();
  img.loadPixels();
  for (int i=0; i<500*500; i++) img.pixels[i]=pixels[i]; //把畫面的色彩搬到img裡面
  img.updatePixels();
  updatePixels();
  for(PVector pp: p){
    ellipse(pp.x, pp.y,20,20);
  }
}
void mousePressed(){
  if(mouseButton==RIGHT){
    p.add(new PVector(mouseX,mouseY));
  }
}
