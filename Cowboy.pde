int w = 800; // Breite des Spielfeldes
int h = 512; // Höhe des Spielfeldes
int sprite_map_size = 16; // höhe & Breite einer Kachel
int sprite_size = 32; // höhe & Breite einer Kachel
int nx = w / sprite_size; // Wieviele Kacheln liegen nebeneinander 25
int ny = h/sprite_size; // 16 Wievile Kacheln liegen übereinander 16
PImage map;
PC pc;
Levels levels;
int animation_counter=0;


void setup() {
  size(800, 512);
  map = loadImage("map.png");
  pc = new PC();
  levels = new Levels();
  levels.setLevel(0);
}

void draw() {
 animation_counter++;
 if (animation_counter==1000){
   animation_counter=0;
 }
  
 if(keyPressed){
    if(keyCode == DOWN){
      pc.go_down();
      
    }
    else if(keyCode == UP){ 
     pc.go_up();
    }
     
     else if(keyCode == LEFT){ 
      pc.go_left();
     }
     
     else if(keyCode == RIGHT){ 
      pc.go_right();
     }
  } 
  levels.show();
  pc.show();
}
