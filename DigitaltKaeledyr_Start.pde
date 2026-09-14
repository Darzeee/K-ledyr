PImage img;
//laver objekt med navn pet, fra klassen Pet
Pet pet;

void setup() {
  size(1000, 700);
  img = loadImage("Dogfish.png"); // Skift til dit eget billednavn
}
  pet = new Pet("Carla", 200, height/2);  //laver nyt objekt og definere dette.
}

void draw() {
  background(220);

  pet.update(); //updater pet objektet - kaldes hele tiden igen og igen, da den er under draw()
  pet.display(); //viser pet objektet


  
  background(255);
image(img, 300, 325, 400, 300);



fill(#5D2706);
rect(0,600,1000,100);

fill(#6C2C04);
rect(0,600,50,100); 

fill(#6C2C04);
rect(150,600,50,100);

fill(#6C2C04);
rect(300,600,50,100);

fill(#6C2C04);
rect(0,600,50,100);

fill(#6C2C04);
rect(0,600,50,100);
}
