class PC {
  PImage sheet;
  int x;
  int y;
  PImage[][] animation=new PImage[8][4];
  int STAND=0;
  int GO=1;
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
    x = 100;
    y = 100;
  }
  
   public void go_down(){
      y= y+5;
      
      
   }
   public void go_upp(){
      y= y-5;
   }
   
   public void go_left(){
      x= x-5;
   }
    
    public void go_right(){
      x= x+5;
   }
  public void show() {
    image(animation[00][00], x, y); 
    
    
  }
}
