//オタニョさんが作ったアニメーション
public class Anime_k extends Anime {
  PVector position; 
  float diameter = 0;
  final float speed = 30;
  color cont_color;
  Anime_k() {
    position = new PVector(width/2, height/2);
    cont_color= color(int(random(0,255)),int(random(0,255)),int(random(0,255)));
  }
  @Override
  void draw() {
    noStroke();
    fill(cont_color);
    triangle(position.x, position.y - diameter, 
           position.x - diameter, position.y + diameter, 
           position.x + diameter, position.y + diameter);
    diameter += this.speed;
  }

}
