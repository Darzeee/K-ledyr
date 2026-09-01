Pet pet;

void setup() {
  size(600, 400);
  pet = new Pet("Bobo", width/2, height/2);
}

void draw() {
  background(220);

  pet.update();
  pet.display();
}
