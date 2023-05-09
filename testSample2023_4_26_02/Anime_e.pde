public class Anime_e extends Anime {
  final color yellow = color(255, 255, 0);
  final float size = 25;// 星の大きさ
  float draw_x = 0;// 星を描画する位置のx座標
  float draw_y = random(10, height / 2 - 20);//　星を描画する位置のy座標
  final int interval_x = 60;// 二つ星の間隔 x軸の座標差
  final int interval_y = 100;// 二つ星の間隔 y軸の座標差
  final float _x_axis_draw_speed = 10.0f;// 星の移動速度 x軸方向
  final float _y_axis_draw_speed = 3.5f;// 星の移動速度 y軸方向
  
  Anime_e(){}
  
  @Override
  void draw() {
    noStroke();
    //星の回転速度
    float s = millis() / 5;
    //星を描画する
    draw_Star(width-draw_x, draw_y, s);
    //draw_Star(width-draw_x+interval_x, draw_y+interval_y, s);
    //draw_Star(width-draw_x+interval_x*2, draw_y+interval_y*2, s);
    draw_x += _x_axis_draw_speed;
    draw_y += _y_axis_draw_speed;
  }
  //星を描画するメソッド 引数x軸　y軸　回転速度
  private void draw_Star(final float x, final float y, final float rotateSpeed)
  {
    pushMatrix();
    translate(x, y);
    fill(yellow);
    //stroke(yellow);
    rotate(radians(rotateSpeed));
    triangle(-3*size/2, sqrt(3)*size/2, 0, -sqrt(3) * size, 3*size/2, sqrt(3)*size/2);
    triangle(-3*size/2, -sqrt(3)*size/2, 0, sqrt(3) * size, 3*size/2, -sqrt(3)*size/2);
    /*
    ArrayList<PVector> pointlist = new ArrayList<PVector>();
    for(int theta = 0; theta <= 720; theta = theta + 144)
    {
      var rad = radians(theta);
      var point = new PVector(cos(rad) * size + x, sin(rad) * size + y);
      pointlist.add(point);
    }
    draw_lines(pointlist);
    */
    popMatrix();
  }
  /*
  private void draw_lines(ArrayList<PVector> points)
  {
    for (int index = 0;index < points.size() - 1;index++)
    {
      line(points.get(index).x, points.get(index).y, points.get(index + 1).x, points.get(index + 1).y);
    }
  }
  */
}
