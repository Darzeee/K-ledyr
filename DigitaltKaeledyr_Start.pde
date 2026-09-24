
//laver objekt med navn pet, fra klassen Pet
Pet pet;

PFont emojiFont;
  PImage Nigga;


Skaal vandskaal;
Skaal madskaal;

void setup() {
  size(1000, 700);
      Nigga = loadImage("Nigga.png");

  pet = new Pet("Blob", 300, 325);
  // vand = new Pleje();

  vandskaal = new Skaal("Vand", 25, 560, 90, 40, #B2B2B2, #5187FA);
 // madskaal = new Skaal("Mad", 100, 100, 100, 100, #B2B2B2, #5187FA);

//Øjet
  noStroke();
  e1 = new Eye( 355,  395, 20);
 madskaal = new Skaal("Mad", 25, 500, 90, 40, #B2B2B2, #6C543F);

  
}

void draw() {
 // background(#D6B488);
image(Nigga, 0, 0, 1000, 700);
  pet.update(); //updater pet objektet
  pet.display(); //viser pet objektet
  vandskaal.display(); //viser vandskålen
  madskaal.display(); //viser madskålen

//Øjet
  e1.update(mouseX, mouseY);
  e1.display();
  
//hvis man dør
  if (pet.glædeDød) {
    noStroke();
    fill(0, 128);
    rect(0, 0, width, height);

  }



}
void mousePressed() {
  vandskaal.mousePressed();
//  madskaal.mousePressed();
}
