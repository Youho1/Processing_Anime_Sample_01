//野呂さんが作ったアニメーションを自分なりの方法で作成
public class Anime_i extends Anime {
  int quantity = 24;
  float moveSpeed = 5;
  float angle = 0;
  float lastTime = 0;
  PVector initialPos;
  
  ArrayList<PVector> coordinates;
  color col;
  float diameter = 10;
  
  Anime_i() {
    coordinates = new ArrayList<PVector>();
    angle = random(0, PI/2);
    initialPos = new PVector(random(0, width), random(0, height));
    for (int i = 0; i < quantity; i++) {
      coordinates.add(initialPos);
    }
    col = color(int(random(0,255)), int(random(0,255)), int(random(0,255)));
  }
  
  @Override
  void draw() {
    pushMatrix();
    fill(col);
    noStroke();
    for (int i=0; i<quantity; i++) {
      coordinates.set(i,new PVector(coordinates.get(i).x + moveSpeed*cos(angle+2*i*PI/quantity), 
        coordinates.get(i).y + moveSpeed*sin(angle+2*i*PI/quantity)));

      ellipse(coordinates.get(i).x,coordinates.get(i).y,diameter,diameter);
    }
    popMatrix();
  }
  
}
