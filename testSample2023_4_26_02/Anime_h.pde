//野呂さんが作ったアニメーションを自分なりの方法で作成
public class Anime_h extends Anime {
  final float minAngle = 0;
  final float maxAngle = PI;
  
  float speed = 0.1;
  float acc = 0.8;
  float rectWidth = 0;
  float angle = 0;
  color col;
  
  Anime_h() {
    col=color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
    angle=random(minAngle, maxAngle);
  }
  
  @Override
  void draw() {
    noStroke();
    pushMatrix();
    translate(width/2, height/2);
    rectMode(CENTER);
    rotate(angle);
    fill(col);
    var rectHeight = width / abs(cos(this.angle)); 
    rect(0,0, this.rectWidth, rectHeight);
    popMatrix();
    acc += 0.8;
    speed += this.acc;
    if (this.rectWidth > 1000) {
      rectWidth=1000; 
    }else{
      rectWidth += this.speed;
    }
  }

}
