public class Anime_c extends Anime {
  float rotate = 0;
  float size = 80;
  float speed = 50;
  color cont_color;
  
  Anime_c() { 
    cont_color = color(int(random(0,255)), int(random(0,255)), int(random(0,255)));
  }
  
  @Override
  void draw() {
    pushMatrix();
    fill(cont_color);
    noStroke();
    translate(width/2, height/2);
    rotate(rotate);
    rect(0,0,size,size);
    popMatrix();
    rotate += speed;
    size += speed;
  }
}
