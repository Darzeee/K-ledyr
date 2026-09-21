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
    offset = 45;
  }

//vis skålene
  void display() {
    fill(farve);
    rect(x, y, l, h);
    fill(indhold);
    ellipse(x+offset, y+12, l-10, h-25);


//tekst på skålene
    fill(0);
    textSize(15);
    text(name, x + l/2, y + h/2 + 14);


    if (mousePressed) {
      if (mouseX >= x && y >= y && mouseX <= x + l && mouseY <= y + h) {
        println(name);
        
        pet.tørst();     
      }
    }
  }
}
