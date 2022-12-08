class BASURA {

  PImage imagenp;
  float posicionxBasura = 200; //Coordenada x
  float posicionyBasura = height/2; //Coordenada y
  float tamano1Basura; 
  float tamano2Basura; 
  float velXBasura;
  float velYBasura;
  float distanBasura;
  color colorBasura;
  int imagen;
  PImage basura;


  BASURA (float posx, float posy, float ancho, float alto, float velx) { //Constructor

    posicionxBasura = posx;
    posicionyBasura = posy;
    tamano1Basura = ancho; 
    tamano2Basura = alto;
    velXBasura=velx;

    imagen = int (random (0, 4));  
    basura = loadImage("basura"+imagen+".png");
  }

  BASURA (float posx, float posy, float ancho, float alto, float velx, float vely) { //Constructor

    posicionxBasura = posx;
    posicionyBasura = posy;
    tamano1Basura = ancho; 
    tamano2Basura = alto;
    velXBasura=velx;
    velYBasura=vely;

    colorBasura= color(0);

    basura = loadImage("basura5.png");//Imagen sushi dorado
  }

  void mostrar() {
    fill (colorBasura);
  //  rect(posicionxBasura, posicionyBasura, tamano1Basura, tamano2Basura);
    image(basura, posicionxBasura, posicionyBasura, tamano1Basura, tamano2Basura);
  }

  void mover() {
    posicionyBasura =posicionyBasura+velXBasura;
    if (posicionyBasura >= height+50) {
      reciclar();
    }
    posicionxBasura =posicionxBasura+velYBasura;
    if (posicionxBasura >= height-50 || posicionxBasura <= 0 ) {
      rebotar();
    }
  }

  void reciclar() {
    posicionyBasura= random(-500, 0);
    posicionxBasura=random(width);

    /*  if (millis()>10000) {
     aumentarVelocidad();
     }
     if (millis()>30000) {
     aumentarVelocidad2();
     }
     */
  }


  void rebotar() {
    velYBasura=velYBasura*-1;
  }

}
