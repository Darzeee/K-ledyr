class Particle {
  float x;
  float y;

  Particle(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void update() {
    y = y - 3;
  }
}

  class HeartParticle extends Particle {
    HeartParticle(float x, float y) {
      super(x, y);
    }
  }
