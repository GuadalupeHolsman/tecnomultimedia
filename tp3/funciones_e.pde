void keyPressed() {
  if ( palabras.equals("START") && key == ' ' ) {
    palabras = "instrucciones";
  }

  if ( palabras.equals("instrucciones") && key == ENTER  ) {
    palabras = "jugando";
  }

  if ( palabras.equals("jugando") && key == ENTER  ) {
    caerpelota=true;
  }

  if (keyCode == RIGHT) {
    posicionrect=posicionrect+10;
  }
  if (keyCode == LEFT) {
    posicionrect=posicionrect-10;
  }

  if ( keyCode == ENTER ) {
    if ( palabras.equals("perder") || palabras.equals("ganar") ) {
      reiniciar();
    }
  }
  
}


void mousePressed() {

  if ( palabras.equals("instrucciones") && dist( mouseX, mouseY, u, u2+200) <= 50 ) {
    palabras = "jugando";
  }
  if ( palabras.equals("jugando") && dist( mouseX, mouseY, 725, 560) <= 40 ) {
    palabras = "instrucciones";
  }
  if ( palabras.equals("jugando") && dist( mouseX, mouseY, 750, 510) <= 40 ) {
    palabras = "START";
  }
  
  if ( palabras.equals("START") && dist( mouseX, mouseY, u, u2+200) <= 50 ) {
    palabras = "creditos";
  }else  if ( palabras.equals("creditos") && dist( mouseX, mouseY, u, u2+200) <= 50 ) {
    palabras = "START";
  }
  
}
