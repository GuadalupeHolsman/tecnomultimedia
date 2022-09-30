//CLASE PAJARO
class Pajaro {

  PImage imagenp;
  float posicionx = width/2; //Coordenada x
  float posiciony = height/2; //Coordenada y
  float tamano1; 
  float tamano2; 
  float velX;
 

  Pajaro (int posx, int posy, int ancho, int alto, float velx) { //Constructor
  
    posicionx = posx;
    posiciony = posy;
    tamano1 = ancho; 
    tamano2 = alto;
    velX=velx;

    imagenp = loadImage("pajaro04.png");
  }

  void mostrar() {
    image(imagenp, posicionx, posiciony, tamano1, tamano2);
  }

  void mover() {
    posicionx =posicionx+velX;
    if (posicionx >width ) {
      posicionx= 0;
      posiciony=random(0, 200);
    }
  }
  
  
}
