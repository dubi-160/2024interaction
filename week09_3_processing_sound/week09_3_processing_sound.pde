//week09_3_processing_sound
import processing.sound.*;
SoundFile sound;

void setup(){
  size(500,500);
  sound = new SoundFile(this, "In Game Music.mp3");
  sound.loop();
}
