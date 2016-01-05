class Catcher {
  PImage bucket;
  float diam;

  Catcher(float x, float y) {
    bucket = loadImage("bucket.jpg");
    diam = 50;
  }

  void display() {
    imageMode(CENTER);
    image(bucket, mouseX, mouseY, diam, diam);    //sets the bucket on the center of the mouse
  }
}