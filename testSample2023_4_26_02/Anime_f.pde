public class Anime_f extends Anime{
  final float bar_width = 100;// 描画するバーの横の長さ
  float bar_x_axis = 0; //　描画するx軸の座標
  float bar_height = 0; //　描画するバーの高さ
  boolean isTop = false;// トップからの描画ですか
  float changeValue = 100;// 100pixel単位で描画の位置をずれる
  float draw_speed = 20;// バーの高さの変化値
  int r;// 色rの指定
  int g;// 色gの指定
  int b;// 色bの指定
  Anime_f() {}
  
  @Override
  void draw(){
    noStroke();
    // 描画するバーのx軸とy軸
    if (bar_height <= height) {
      bar_height += draw_speed; 
    }
    else {
      bar_height = 0;
      if(bar_x_axis >= width - 100) {
        changeValue = -100;
      }
      else if (bar_x_axis <= 0)
      {
        changeValue = 100;
      }
      bar_x_axis += changeValue;
      isTop = !isTop;
      g = int(random(0, 255));
      b = int(random(0, 255));
    }
    // 色の指定
    r = int(bar_height / height * 255);
    fill(r, g, b);
    // バーを描画する
    if (isTop) {
      rect(bar_x_axis, 0, bar_width, bar_height);
    }
    else {
      rect(bar_x_axis, height - bar_height, bar_width, bar_height);
    }
  }
}
