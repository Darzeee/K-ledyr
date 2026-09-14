class Pet {
  PImage img;

  String name;
  float glæde;
  float vand;
  float x;
  float y;

  //construktor, siger hvad der skal bruges når der laves et Pet
  Pet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    vand = 100;
    glæde = 100;
    img = loadImage("Dogfish.png");

  }

  void update() { //Får vand til at gå nedad
    vand = vand - 0.05;

    if (vand < 0) {
      vand = 0;
    }
    
    glæde = glæde - 0.05;
    
    if (glæde < 0) {
      glæde = 0;
    }

  

}


  void display() {
    image(img, x, y, 400, 300);

    fill(0);
    textAlign(CENTER);
    textSize(50);
    text(name, width/2,65);
    textSize(20);
    text("Vand: " + int(vand), 700, 20 + 75);
    textSize(20);
    text("Glæde: " + int(glæde), 295 , 20 + 75);

    float glædelength = glæde * 2;
    float vandlength = vand * 2;
    rect(width/2+100,35,210,30);
    rect(width/2-310,35,210,30);

    fill(#4B82C4);
    rect(width/2+105,40,vandlength,20);
    fill(#EAD71F);
    rect(width/2-305,40,glædelength,20);

}

  void glæde(){
      glæde = glæde + 0.15;
    if (glæde > 100) {
      glæde = 100;
    }
  }


  void tørst() {
    vand = vand + 0.15;
    if (vand > 100) {
      vand = 100;
    }
  }
 
}
