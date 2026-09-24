
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


  vandskaal = new Skaal("Vand", 25, 560, 90, 40, #B2B2B2, #5187FA);
  madskaal = new Skaal("Mad", 25, 500, 90, 40, #B2B2B2, #6C543F);

  //Øjet
  noStroke();
  e1 = new Eye( 355, 395, 20);
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

    stroke(0);
    fill(200);
    rect(width/2-380, height/2-130, width/2+260, 80);
    textSize(30);
    fill(0);
    text("Dit dyr er døde af depression...", width/2, height/2 - 100);
    text("Næste gang skal du huske at kæle for " + pet.name, width/2, height/2 -62 );
  }

  if (pet.vandDød) {
    noStroke();
    fill(0, 128);
    rect(0, 0, width, height);

    stroke(0);
    fill(200);
    rect(width/2-410, height/2-140, width/2+320, 130);
    textSize(30);
    fill(0);
    text(pet.name + " døde af tørst...", width/2, height/2 - 100);
    text("Vand er vigtigt for alle levene væsner, så husk at give " + pet.name + " vand!", width/2, height/2 - 62);
    text(" Måske skal du også selv tage et glas vand, inden du spiller igen.", width/2, height/2 - 30);
  }
}
void mousePressed() {
  vandskaal.mousePressed();
  //  madskaal.mousePressed();
}
