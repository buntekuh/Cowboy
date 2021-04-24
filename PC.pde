class PC {
  PImage sheet;
  int x;
  int y;
  PImage[][] animation=new PImage[8][4];
  final static int STAND=0;
  final static int GO=1;
  final static int GO_DOWN=0;
  final static int GO_RIGHT=1;
  final static int GO_LEFT=2;
  final static int GO_UP=3;

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
    y += 1;
    facing = GO_DOWN;  
   }
   public void go_up(){
      y -= 1;
      facing = GO_UP;
   }
   
   public void go_left(){
      x -= 1;
      facing = GO_LEFT;
   }
    
   public void go_right(){
     //if (initiate_go()){
        x += 1;
        facing = GO_RIGHT;
      //}
  }
  /*private boolean initiate_go() {
     if (animation_counter == 0) {
       action = GO;
       return true;
     }
     return false;
  }*/
  public void show() {
    image(animation[action*4+facing][0], x*sprite_size, y*sprite_size-sprite_size);    
  }
}
