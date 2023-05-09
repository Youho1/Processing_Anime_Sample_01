//オタニョさんが作ったアニメーション
public class Anime_j extends Anime {
  int pattern = int(random(3));
  float x = width;
  float y = height;
  float diameter = 0;
  float speed = 30;
  color cont_color;
  Anime_j() {
    cont_color= color(int(random(0,255)),int(random(0,255)),int(random(0,255)));
  }
  
  @Override
  void draw() {
    if (pattern == 0) {
      triangle(random(x), random(y), 
             random(x), random(y), 
             random(x), random(y));
    }else if (pattern == 1) {
      rect(random(x), random(y), random(50, 100), random(50, 100));
    }else if (pattern == 2) {
      ellipse(random(x), random(y), random(50, 100), random(50, 100));
    }
  }
}
