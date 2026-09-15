
//laver objekt med navn pet, fra klassen Pet
Pet pet;

//Pleje vand;

Skaal vandskaal;
Skaal madskaal;

void setup() {
  size(1000, 700);

  pet = new Pet("Blob", 300, 325);
  // vand = new Pleje();

  vandskaal = new Skaal("Vand", 50, 560, 90, 40, #B2B2B2, #5187FA);
 // madskaal = new Skaal("Mad", 100, 100, 100, 100, #B2B2B2, #5187FA);

//Øjet
  noStroke();
  e1 = new Eye( 355,  395, 20);
}

void draw() {
  background(#D6B488);
  image(pet.img, 300, 325, 400, 300);


  pet.update(); //updater pet objektet
  pet.display(); //viser pet objektet
  vandskaal.display(); //viser vandskålen
  //madskaal.display(); //viser madskålen




  fill(#5D2706); //gulvbræder
  rect(0, 600, 1000, 100);
  fill(#8E6145); //gulvbræder

  for (int x = 0; x < 1000; x += 100) {
    rect(x, 600, 50, 100);
  }
//Øjet
  e1.update(mouseX, mouseY);

  e1.display();
}
