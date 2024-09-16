//week02_6_pacman_b_direction_from_week_02_3
void setup(){
 size(400,400);
}
int x=200, y=200;
void draw(){
  background(255);
  fill(#FFDC0F);
  float a = frameCount %180;
  float b = radians(mouseX);
  if(a<45) a =radians(a);
      else if(a<90) a = radians(90-a);
      else if(a<135)a  = radians(a-90);
      else if(a<180) a = radians(180-a);
      arc(x+50, y+50, 100, 100, 0 + a, PI*2 - a, PIE);
}
