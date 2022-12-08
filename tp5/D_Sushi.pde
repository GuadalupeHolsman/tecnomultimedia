class SUSHI {

  float posicionxSushi = width/2; //Coordenada x
  float posicionySushi = height/2; //Coordenada y
  float tamano1Sushi = 50; 
  float tamano2Sushi = 50; 
  float velXSushi;
  float velYSushi;
  float distanSushi;
  color colorsushi;
  int imagen;

  PImage sushi;

  PUNTAJE puntajeJuganding;

  //PImage Sushi1;
  //PImage Sushi2;
  //PImage Sushi3;
  //PImage Sushi4;
  //PImage Sushi0; 

  SUSHI (float posx, float posy, int ancho, int alto, float velx /* float d1 */) { //CONSTRUCTOR

    posicionxSushi = posx;
    posicionySushi = posy;
    tamano1Sushi = ancho; 
    tamano2Sushi = alto;
    velXSushi=velx;


    imagen = int (random (0, 4));  
    sushi = loadImage("Sushi"+imagen+".png");
  }

  //CONSTRUCTOR ESPECIAL 
  SUSHI (float posx, float posy, int ancho, int alto, float velx, float vely) { //CONSTRUCTOR ESPECIAL (no mismo parametros)
    posicionxSushi = posx;
    posicionySushi = posy;
    tamano1Sushi = ancho; 
    tamano2Sushi = alto;
    velXSushi=velx;
    velYSushi=vely;

    sushi = loadImage("Sushi5"+".png");//Imagen sushi dorado

    colorsushi= color(255);
  }


  void mostrar() {
    fill (colorsushi);
    //rect(posicionxSushi, posicionySushi, tamano1Sushi, tamano2Sushi);
    image(sushi, posicionxSushi, posicionySushi, tamano1Sushi, tamano2Sushi);
  }

  void mover() {
    posicionySushi =posicionySushi+velXSushi;
    if (posicionySushi >= height+50) {
      reciclar();
    }
    posicionxSushi =posicionxSushi+velYSushi;
    if (posicionxSushi >= height-50 || posicionxSushi <= 0 ) {
      rebotar();
    }
  }


  void reciclar() {
    posicionySushi= random(-500, 0);
    posicionxSushi=random(width);

   
  }

  void rebotar() {
    velYSushi=velYSushi*-1;
  }
}
