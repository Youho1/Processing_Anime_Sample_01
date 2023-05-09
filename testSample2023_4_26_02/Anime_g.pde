public class Anime_g extends Anime {
  ArrayList<PVector> points;
  
  Anime_g() {
    //frameRate(10);
    points = new ArrayList<PVector>();
  }
  
  @Override
  void draw(){
    strokeWeight(5);
    background(0, 0, 0);
    
    for (int i = 0; i < 10; i++) {
      int xpos = int(random(0, width));
      int ypos = int(random(0, height));
      points.add(new PVector(xpos, ypos));
    }    
    draw_lines(points);
    del_lines(points);
  }
  
  void draw_lines(ArrayList<PVector> points) {
    color r_color = color(int(random(0, 255)),int(random(0, 255)),int(random(0, 255)));
    for (int i = 0; i < points.size() - 1; i++) {
      stroke(r_color);
      line(points.get(i).x, points.get(i).y, points.get(i+1).x, points.get(i+1).y);
    }
  }
  
  void del_lines(ArrayList<PVector> points) {
    while (points.size() > 0) {
      points.remove(0);
    }
  }
  
}
