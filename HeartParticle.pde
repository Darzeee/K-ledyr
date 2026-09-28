class HeartParticle extends Particle {

  HeartParticle(float x, float y) {
    super(x, y);
  }

  @Override
  void display() {
    noFill();
    stroke(230, 70, 110, alpha);
    
    beginShape();
    vertex(x, y - 5); // indhakket øverst
    bezierVertex(x - 12, y - 20, x - 25, y - 8, x, y + 14);
    bezierVertex(x + 25, y - 8, x + 12, y - 20, x, y - 5);
    endShape(CLOSE);
  }
}
