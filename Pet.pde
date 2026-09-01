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
    
float r = random(1 , 255);
float g = random(1 , 255);
float b = random(1 , 255);

    fill(r, g, b); //farve på pet
    ellipse(x, y, 100, 100);

    fill(0);
    textAlign(CENTER);
    text(name, x, y - 80);
    text("Energi: " + int(energy), x, y + 75);
  }


  void sleep(){
    energy = energy + 0.15;
        if (energy > 100) {
      energy = 100;
    }
  }
  
}
