class Tile {
  private int x;
  private int y;
  private PImage image;
  
  public Tile(int n, int x, int y){
    this.x = x * 32;
    this.y = y * 32;
    
    int px = n % 40;
    int py = n / 40;
    this.image = map.get(px * sprite_map_size, py * sprite_map_size, sprite_map_size, sprite_map_size);
    this.image.resize(sprite_size, sprite_size);
  }
  
  public void display() {
    image(image, x, y);
  }
}
