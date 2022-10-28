//FALTA IMAGEN GATITO


class GATITO {

  float posicionx = mouseX; //Coordenada x
  float posiciony = height/2; //Coordenada y
  float tamano1; 
  float tamano2; 


  GATITO (int posx, int posy, int ancho, int alto ) { //Constructor

    posicionx = posx;
    posiciony = posy;
    tamano1 = ancho; 
    tamano2 = alto;
  }

  void mostrar() {
   rectMode(CENTER);
    rect(mouseX, posiciony, tamano1, tamano2);
  }
}
