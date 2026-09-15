class Skaal {

  String name;
  int x, y;
  int l, h;
  color farve;
  color indhold;
  int offset;

  Skaal(String name, int x, int y, int l, int h, color farve, color indhold) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.l = l;
    this.h = h;
    this.farve = farve;
    this.indhold = indhold;
    offset = 10;
  }

  void display() {

    rect(x, y, l, h);
    fill(farve);
    rect(x-offset, y-offset, l, h);
    
/*
    text("Vand", vandSkålX + vandSkålLength/2, vandSkålY + vandSkålHeight/2 + 5);
    textSize(20);
    if (mousePressed) {
      if (mouseX >= vandSkålX && mouseY >= vandSkålY &&
        mouseX <= vandSkålX + vandSkålLength && mouseY <= vandSkålY + vandSkålHeight) {
        println("vand");
      }
    }
    */
  }
}
