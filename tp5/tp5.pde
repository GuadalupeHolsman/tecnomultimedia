
SUSHI sushi; //Declara el objeto
GATITO gatito;
PImage fondo;

void setup() {
  size(800, 800);


  fondo = loadImage("paisaje.jpg");

  sushi = new SUSHI (0, 100, 60, 60, 2);
  gatito= new GATITO (width/2, 700, 100, 50 );
}

void draw() {


  background(0);

  image(fondo, 0, 0, width, height);

  sushi.mostrar();
  sushi.mover();

  gatito.mostrar();
}
