class VIDAS {

  float posicionxVidas;
  float posicionyVidas;
  float tamano1Vidas;
  float tamano2Vidas;
  float cantidadVidas;
  color colorvidas;
  boolean desaparecer;

  VIDAS(float posx, float posy, float ancho, float alto) { //CONSTRUCTOR

    posicionxVidas=posx;
    posicionyVidas=posy;
    tamano1Vidas=ancho;
    tamano2Vidas=alto;

    colorvidas = color (200, 0, 0);
  }

  void mostrarVidas() { 
    noStroke();
    fill (colorvidas);
    ellipse (posicionxVidas, posicionyVidas, tamano1Vidas, tamano2Vidas);
    fill(255);
    textSize(30);
    text("vida", posicionxVidas, posicionyVidas + 15, tamano1Vidas, tamano2Vidas);
  }
}
