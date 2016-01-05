class Snow {
  PVector loc;
  PVector vel;
  PVector acc;
  float diam;
  float s;

  Snow(float x, float y ) {

    loc = new PVector(x, y);
    vel = new PVector(x, y);//.random2D();
    acc = new PVector(0, .1);
    diam = 50;
  }

  void fall() {
    loc.add(vel);
    vel.add(acc);
  }

  void display() {
    fill(255);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void reset() {
    loc.set(random(width), random(-height, 0));
    vel.set(0, 0);
  }

  boolean isDead() {                      
    if (dist(loc.x, loc.y, mouse.x, mouse.y) <= diam/2+25) {
      return true;
    } else {
      return false;
    }
  }
}