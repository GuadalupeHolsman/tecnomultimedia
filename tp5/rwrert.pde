//ACA IRIA UN ARREGLO 
//FALTAN IMAGENES SUSHI

class SUSHI {

  PImage imagenp;
  float posicionx = width/2; //Coordenada x
  float posiciony = height/2; //Coordenada y
  float tamano1; 
  float tamano2; 
  float velX;
 

  SUSHI (int posx, int posy, int ancho, int alto, float velx) { //Constructor
  
    posicionx = posx;
    posiciony = posy;
    tamano1 = ancho; 
    tamano2 = alto;
    velX=velx;

    
  }

  void mostrar() {
    rect(posicionx, posiciony, tamano1, tamano2);
  }

  void mover() {
    posiciony =posiciony+velX;
    if (posiciony >height) {
      posiciony= 0;
      posicionx=random(width);
    }
  }
  
  
}
