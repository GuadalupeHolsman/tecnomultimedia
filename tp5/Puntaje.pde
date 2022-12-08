class PUNTAJE {
  
  float posicionxPuntos; //Coordenada x
  float posicionyPuntos; //Coordenada y
  int x = 0;
  int a = 0;
  String puntos;
  int puntoS;

  PUNTAJE (int posx, int posy) {  //CONSTRUCTOR
    posicionxPuntos = posx;
    posicionyPuntos = posy;
   
  }


  void puntaje (int tamanioTexto) {
    textSize (tamanioTexto);
    fill(255);
    text ("Puntos " + x, posicionxPuntos, posicionyPuntos);
    fill(0);
    text ("Puntos " + x, posicionxPuntos - 3, posicionyPuntos);
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
