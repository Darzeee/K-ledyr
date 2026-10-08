class HeartParticle extends Particle {

  HeartParticle(float x, float y) {
    super(x, y);
  }
float colourx;


  @Override
  void display() {
    colourx = random(150,255);
    fill(colourx,0,0);
    stroke(colourx,0,0);
    
    beginShape();
    vertex(x, y - 5); // indhakket øverst
    bezierVertex(x - 7, y - 15, x - 20, y - 3, x, y + 9);
    bezierVertex(x + 20, y - 3, x + 7, y - 15, x, y - 0);
    endShape(CLOSE);
  }
}
