//CLASE DESIERTO
class Desierto {

  PImage imagend;
  float posicionx = 0; //Coordenada x
  float posiciony = 0; //Coordenada y
  float tamano = 800; 

  BolaDePasto pasto;//Declara el objeto
  

  Pajaro pajaro01; //Declara el objeto
  Pajaro pajaro02; //Declara el objeto
  Pajaro pajaro03; //Declara el objeto


  Desierto(int posx, int posy) { //Constructor

    posicionx = posx;
    posiciony = posy;

    imagend = loadImage ("desierto.jpeg");

    pasto = new BolaDePasto(0, 650, 200, 150, 0.1);


    pajaro01 = new Pajaro (0, 100, 60, 60, 3);
    pajaro02 = new Pajaro (700, 200, 40, 40, 2);
    pajaro03 = new Pajaro (200, 250, 80, 80, 2.5);
  }

  void mostrar() {
    image(imagend, posicionx, posiciony, tamano, tamano );

    pasto.mostrar();
    pasto.mover();
    pasto.cambiodireccion();

    pajaro01.mostrar();
    pajaro02.mostrar();
    pajaro03.mostrar();
    pajaro01.mover();
    pajaro02.mover();
    pajaro03.mover();
  }

  
}
