import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
final int num = 11;
AudioSample[] se = new AudioSample[num];
ArrayList<Anime> animes = new ArrayList<Anime>();

void setup() {
  size(800,600);
  minim = new Minim(this);
  for (int i=0;i<num;i++) {
    String sename = "/sounds/se" + i + ".wav";
    println(sename);
    se[i] = minim.loadSample(sename);
  }
}

void draw() {
  background(0);
  if (animes.size() > 0) {
    for (int i=0;i<animes.size();i++) {
      Anime ani = animes.get(i);
      ani.draw();
    }
  }
}

void keyPressed() {
  if (key == 'a') {
    se[0].trigger();
    animes.add(new Anime_a());
  }
  else if (key == 's') {
    se[1].trigger();
    animes.add(new Anime_b());
  }
  else if (key == 'd') {
    se[2].trigger();
    animes.add(new Anime_c());
  }
  else if (key == 'f') {
    se[3].trigger();
    animes.add(new Anime_d());
  }
  else if (key == 'g') {
    se[4].trigger();
    animes.add(new Anime_e());
  }
  else if (key == 'h') {
    se[5].trigger();
    animes.add(new Anime_f());
  }
  else if (key == 'j') {
    se[6].trigger();
    animes.add(new Anime_g());
  }
  else if (key == 'k') {
    se[7].trigger();
    animes.add(new Anime_h());
  }
  else if (key == 'l') {
    se[8].trigger();
    animes.add(new Anime_i());
  }
  else if (key == 'z') {
    se[9].trigger();
    animes.add(new Anime_j());
  }
  else if (key == 'x') {
    se[10].trigger();
    animes.add(new Anime_k());
  }
  if (animes.size()>num) {
    animes.remove(0);
  }
}
