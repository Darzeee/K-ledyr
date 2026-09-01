class Pet {
  String name;
  float x;
  float y;
  float energy;

//construktor, siger hvad der skal bruges når der laves et Pet
  Pet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    energy = 100;
  }

  void update() { //Får energien til at gå nedad 
    energy = energy - 0.05;

    if (energy < 0) {
      energy = 0;
    }
  }

//pets attibuter??????
  void display() {
    fill(120, 200, 140);
    ellipse(x, y, 100, 100);

    fill(0);
    textAlign(CENTER);
    text(name, x, y - 65);
    text("Energi: " + int(energy), x, y + 75);
  }
}
