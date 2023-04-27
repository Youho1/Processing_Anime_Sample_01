public class Anime_b extends Anime{
  float x = width / 2;
  float y = height / 2;
  float diameter = 0;
  float speed = 10;
  color cont_color;
  Anime_b() {
    cont_color = color(int(random(0,255)), int(random(0,255)), int(random(0,255)));
  }
  @Override
  void draw() {
    noStroke();
    rectMode(CORNER);
    fill(cont_color);
    rect(0,0,x,height);
    x += this.speed;
  }
}
