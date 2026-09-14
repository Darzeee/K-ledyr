PImage img;
//laver objekt med navn pet, fra klassen Pet
Pet pet;

void setup() {
  size(1000, 700);
  img = loadImage("Dogfish.png"); // Skift til dit eget billednavn
}


void draw() {
  background(220);

 // pet.update(); //updater pet objektet - kaldes hele tiden igen og igen, da den er under draw()
 // pet.display(); //viser pet objektet


  
  background(255);
image(img, 300, 325, 400, 300);

fill(#5D2706);
rect(0, 600, 1000, 100);

fill(#8E6145);

for (int x = 0; x < 1000; x += 100) {
  rect(x, 600, 50, 100);
}
}
