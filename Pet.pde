class Pet {
  PImage normalimg;
  PImage dødimg;
  float normalimgTint = 255;

  String name;
  float vand;
  float x;
  float y;
  float glæde;

  boolean glædeDød;


  //construktor, siger hvad der skal bruges når der laves et Pet
  Pet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    vand = 100;
    glæde = 100;
    normalimg = loadImage("Dogfish.png");
    dødimg = loadImage("Blackdogfish.png");
  }

  void update() { //Får energien til at gå nedad
    vand = vand - 0.04;

    normalimgTint = normalimgTint - 0.4;

    if (vand < 0) {
      vand = 0;
    }



    glæde = glæde - 0.05;

    if (glæde < 0) {
      glæde = 0;
      glædeDød = true;
    }
  }



  void display() {
    image(dødimg, x, y, 400, 300);

    float alpha = map(vand, 0, 100, 0, 255);
    tint(255, alpha);
    image(normalimg, x, y, 400, 300);

    noTint();

    textAlign(CENTER);
    fill(0);
    textSize(50);
    text(name, width/2, 65);
    textSize(25);
    text("Vand: " + int(vand), 700, 20 + 75);
    textSize(25);
    text("Glæde: " + int(glæde), 295, 20 + 75);
    fill(#A57D48);
    float glædelength = glæde * 2;
    float vandlength = vand * 2;
    rect(width/2+100, 35, 210, 30);
    rect(width/2-310, 35, 210, 30);

    fill(#4B82C4);
    rect(width/2+105, 40, vandlength, 20);
    fill(#EAD71F);
    rect(width/2-305, 40, glædelength, 20);
    
  }

  void glæde() {
    glæde = glæde + 0.15;
    if (glæde > 100) {
      glæde = 100;
    }
  }

  void tørst() {
    vand = vand + 2;
    if (vand > 100) {
      vand = 100;
    }
  }
}
