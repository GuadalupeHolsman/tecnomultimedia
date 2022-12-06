class PUNTAJE {
  //PNERLE POSICIN EN X Y EN YEN EL CONSTRUCTOR
  float posicionxPuntos; //Coordenada x
  float posicionyPuntos; //Coordenada y
  float tamano1Puntos; 
  float tamano2Puntos; 
  int x = 0;
  int a = 0;
  String puntos;
  int puntoS;

  VIDAS vidas1;
  VIDAS vidas2;
  VIDAS vidas3;


  PUNTAJE (int posx, int posy, int ancho, int alto ) {  //CONSTRUCTOR
    posicionxPuntos = posx;
    posicionyPuntos = posy;
    tamano1Puntos = ancho; 
    tamano2Puntos = alto;
  }


  void puntaje () {
    textSize (50);
    fill(255);
    text ("Puntos " + x, posicionxPuntos, posicionyPuntos - 30);
    fill(0);
    text ("Puntos " + x, posicionxPuntos - 3, posicionyPuntos - 30);
  }

  void puntajeNegativo () {
    textSize (20);
    text ("Puntos negativos" + a, posicionxPuntos, posicionyPuntos);
  }

  void subirpuntaje () {
    x = x + 1;
  }

  void subirpuntajeExtremo () {
    x = x + 3;
  }

  void bajarpuntaje () {
    a = a - 1;
  }

  void bajarpuntajeExtrema () {
    a = a - 3;
  }
}
