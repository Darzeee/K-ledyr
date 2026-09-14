class Pet {
  PImage img;

  String name;
  float vand;
  float x;
  float y;

  //construktor, siger hvad der skal bruges når der laves et Pet
  Pet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    vand = 100;
    img = loadImage("Dogfish.png");
  }

  void update() { //Får energien til at gå nedad
    vand = vand - 0.05;

    if (vand < 0) {
      vand = 0;
    }

    int vandSkålX = 100;
    int vandSkålY = 100;
    int vandSkålLength = vandSkålX + 50;
    int vandSkålYHeight = vandSkålY + 50;
    rect(vandSkålX, vandSkålY, vandSkålLength, vandSkålYHeight);
    fill(0);


    if (mousePressed) {
      if (mouseX >= vandSkålX && mouseY >= vandSkålY &&
     mouseX <= vandSkålX + vandSkålLength && mouseY <= vandSkålY + vandSkålYHeight) {
        println("vand");
      }
    }
  }

  void display() {
    image(img, x, y, 400, 300);

    fill(0);
    textAlign(CENTER);
    text(name, 100, 100);
    text("Vand: " + int(vand), x, y + 75);
  }


  void sleep() {
    vand = vand + 0.15;
    if (vand > 100) {
      vand = 100;
    }
  }
}
