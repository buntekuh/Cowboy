class PC {
  PImage sheet;
  int x;
  int y;
  PImage[][] animation=new PImage[8][4];
  final static int GO=0;
  final static int STAND=1;
  final static int GO_DOWN=0;
  final static int GO_RIGHT=1;
  final static int GO_LEFT=2;
  final static int GO_UP=3;
  final static int ANIMATION_STEPS = 4;
  final static int SPEED = 10;

  int facing=GO_RIGHT;
  int action=STAND;
  
  public PC() {
    sheet = map.get(0, 6*sprite_map_size, 4*sprite_map_size, 16*sprite_map_size);
    sheet.resize(4*sprite_size, 16*sprite_size);
    for (int y=0;y<8;y++) {
      for (int x=0;x<4;x++){
       animation[y][x]=sheet.get(x*sprite_size,y*2*sprite_size,sprite_size,2*sprite_size);
      }
    }
    x = 0;
    y = 0;
  }
  
  public void go_down(){
    if (action == STAND){
      action = GO;
      y += 1;
      facing = GO_DOWN;
    }
   }
   public void go_up(){
     if (action == STAND){
        action = GO;
        y -= 1;
        facing = GO_UP;
     }
   }
   
   public void go_left(){
     if (action == STAND){
        action = GO;
        x -= 1;
        facing = GO_LEFT;
     }
   }
    
   public void go_right(){
     if (action == STAND){
        action = GO;
        x += 1;
        facing = GO_RIGHT;
     }
  }
  
  public void show() {
    int x = this.x*sprite_size;
    int y = this.y*sprite_size-sprite_size;
    int animation_step = animation_counter / SPEED;
    
    if (action == GO) {
     int displacement = sprite_size - (sprite_size / ANIMATION_STEPS * animation_step);
     if (facing == GO_RIGHT){
       x -= displacement;
     }
     else if (facing == GO_LEFT) {
       x += displacement;
     }
     else if (facing == GO_UP) {
       y += displacement;
     }
     else {
       y -= displacement;
     }
    }
    image(animation[action*4+facing][animation_step], x, y);    
    
    animation_counter++;
    if (animation_counter == ANIMATION_STEPS * SPEED) {
      animation_counter = 0;
      action = STAND;
    }
  }
}
