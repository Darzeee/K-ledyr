
//laver objekt med navn pet, fra klassen Pet
Pet pet;

//Pleje vand;

Skaal vandskaal;

void setup() {
  size(1000, 700);

  pet = new Pet("Blob", 300, 325);
 // vand = new Pleje();
  
  vandskaal = new Skaal("Vand", 50, 500, 90, 40, #6581BC, #5187FA);
 
  
}

void draw() {
  background(#D6B488);
  image(pet.img, 300, 325, 400, 300);


  pet.update(); //updater pet objektet - kaldes hele tiden igen og igen, da den er under draw()
  pet.display(); //viser pet objektet


  fill(#5D2706);
  rect(0, 600, 1000, 100);

  fill(#8E6145);

  for (int x = 0; x < 1000; x += 100) {
    rect(x, 600, 50, 100);
  }
}
