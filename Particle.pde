class Particle {
  float x;
  float y;
  float vx;
  float vy;
  float alpha;

  Particle(float x, float y) {
    this.x = x;
    this.y = y;

    vx = random(-1, 1);
    vy = random(-2.5, -0.5);
    alpha = random(50,255);
  }

  void update() {
    x = x + vx;
    y = y + vy;
    alpha = alpha - 10;
  }

  void display() {
    noStroke();
    fill(alpha);
    circle(x, y, 12);
  }

boolean isDead() {
  return alpha <= 0;
}
}
