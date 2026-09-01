
//laver objekt med navn pet, fra klassen Pet
Pet pet;

void setup() {
  size(600, 400);
  pet = new Pet("Carla", 200, height/2);  //laver nyt objekt og definere dette.
}

void draw() {
  background(220);

  pet.update(); //updater pet objektet - kaldes hele tiden igen og igen, da den er under draw()
  pet.display(); //viser pet objektet
}
