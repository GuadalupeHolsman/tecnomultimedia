class JUEGO {

  SUSHI [] sushis = new SUSHI[5];       //Arreglo Sushis
  SUSHI sushiExtremo;
  GATITO gatito;                        //Declaracion de clases dentro de clase principal
  BASURA [] basuras = new BASURA[5];    //Declaracion de clases dentro de clase principal
  BASURA basuraExtrema;
  VIDAS vidas1;
  VIDAS vidas2;
  VIDAS vidas3;
  PUNTAJE puntajeJuganding;



  PImage restaurant;
  PImage paisaje;
  PImage instrucciones;
  int estado;

  //-------------------------------------------------------------------------------------------------------------------------------------------------------  

  JUEGO() {  //CONSTRUCTOR

    restaurant = loadImage("restaurant.JPG");
    paisaje=loadImage("paisaje.jpg");
    instrucciones=loadImage("instrucciones.jpg");

    estado = 0;

    puntajeJuganding = new PUNTAJE(120, 90);

    sushiExtremo = new SUSHI((random (50, 750)), (random( -800, 0)), 130, 130, 4, 10);
    basuraExtrema = new BASURA ((random (10, 780)), (random( -800, 0)), 120, 120, 8, 8);

    vidas1 = new VIDAS(width-50, 70, 70, 70);
    vidas2 = new VIDAS(width-150, 70, 70, 70);
    vidas3 = new VIDAS(width-250, 70, 70, 70);

    gatito= new GATITO (mouseX, 700, 200, 200);




    for (int i=0; i<basuras.length; i++) {
      basuras[i] = new BASURA ((random (10, 780)), (random(-height/2, 0)), 120, 120, (random(8, 10)));
    }                     //Declarar arreglo Sushis con ciclo for

    for (int i=0; i<sushis.length; i++) {
      sushis[i] = new SUSHI ((random (50, 750)), (random(-height/2, 0)), 120, 120, (random(5, 8)));
    }                       //Declarar arreglo Basuras con ciclo for
  }


  //-------------------------------------------------------------------------------------------------------------------------------------------------------

  void JuegoEntero() {

    if (estado == 0) {
      Inicio();
    }

    if (estado == 1) {
      Instrucciones();
    }


    if (estado == 2) {
      Juganding();
    }

    if (estado == 3) {
      GameOver();
    }
  }

  //-------------------------------------------------------------------------------------------------------------------------------------------------------

  void Inicio() {
    imageMode (CENTER);
    image (paisaje, width/2, height/2, width+30, height+30);
    rectMode(CENTER);
    fill(200, 10, 70, 150);
    rect(width/2, height/2, width, height);
    textAlign(CENTER);
    textSize(80);
    fill(255);
    text("Gatito Come Sushi", width/2 + 5, height/2);
    fill(0);
    text("Gatito Come Sushi", width/2, height/2);
    fill(255);
    textSize(30);
    text("Candela Ibañez y Guadalupe Holsman", width/2, height/2 + 50);
    textSize(30);
    text("Toca a para CONTINUAR", width/2, height/2 + 300);
  }

  void Instrucciones() {

    imageMode (CENTER);
    image (instrucciones, width/2, height/2, width, height);
    fill(0);
    textSize(30);
    text("Toca b para CONTINUAR", width/2, height/2 + 300);
  }



  void GameOver() {

    imageMode (CENTER);
    image (paisaje, width/2, height/2, width+30, height+30);
    rectMode(CENTER);
    fill(200, 10, 70, 150);
    rect(width/2, height/2, width, height);
    fill(255, 255, 255, 200);
    noStroke();
    rect(width/2, height/2 + 50, width, 150);
    textAlign(CENTER);
    textSize(100);
    fill(255);
    text("GAME OVER", width/2 + 10, height/2);
    fill(0);
    text("GAME OVER", width/2, height/2);
    fill(255);
    textSize(30);
    text("Toca c  para REINICIAR", width/2, height/2 + 300);
    puntajeJuganding.puntaje(50);
    puntajeJuganding.posicionxPuntos = width/2;
    puntajeJuganding.posicionyPuntos = height/2 + 80;
  }

  void Juganding() {
    mostrarJuego ();
    comerSushi ();
    comerBasura();
    comerSushiExtremo();
    comerBasuraExtrema();
  }


  //-------------------------------------------------------------------------------------------------------------------------------------------------------


  void mostrarJuego() {
    pushStyle ();
    imageMode (CENTER);
    image (restaurant, width/2, height/2, width+30, height+30);
    gatito.mostrar();
    fill(0);
    puntajeJuganding.puntaje(40);
    //puntajeJuganding.puntajeNegativo();
    popStyle ();

    vidas1.mostrarVidas();
    vidas2.mostrarVidas();
    vidas3.mostrarVidas();

    for (int i=0; i<sushis.length; i++) {       //Llamando metodos clase sushi
      sushis[i].colorsushi= color(255);
      sushis[i].mostrar();                              //Llamando funcion para dibujar Sushis
      sushis[i].mover();                                //Llmanado funcion para mover Sushis
    }

    println(millis());
    if (puntajeJuganding.x > 5) {
      sushiExtremo.colorsushi = color(0, 200, 0);   
      sushiExtremo.mostrar();
      sushiExtremo.mover();
    }

    if (puntajeJuganding.x > 3) {
      basuraExtrema.colorBasura = color( 0, 0, 200);
      basuraExtrema.mostrar();
      basuraExtrema.mover();
    }




    for (int i=0; i<basuras.length; i++) {              //Llamando metodos clase basura
      basuras[i].colorBasura= color(0);
      basuras[i].mover();
      basuras[i].mostrar();
    }
  }


  void comerSushi() {

    for (int i=0; i<sushis.length; i++) {
      float DistanSushis = dist(mouseX, gatito.posicionyGatito, sushis[i].posicionxSushi, sushis[i].posicionySushi);


      if (DistanSushis < 90) {   // accion de comer
        maullido.trigger ();
        gatito.relleno = color(255, 100, 20);
        sushis[i].reciclar();

        puntajeJuganding.subirpuntaje ();
        vidas1.desaparecer=false;
      }
    } //fin ciclo for
  }


  void comerSushiExtremo() {
    float DistanSushis = dist(mouseX, gatito.posicionyGatito, sushiExtremo.posicionxSushi, sushiExtremo.posicionySushi);

    if (DistanSushis < 90) {   // accion de comer
      maullido.trigger ();
      gatito.relleno = color(255, 100, 20);
      sushiExtremo.reciclar();
      puntajeJuganding.subirpuntajeExtremo ();
    }
  }

  void comerBasuraExtrema() {


    float DistanBasuras = dist(mouseX, gatito.posicionyGatito, basuraExtrema.posicionxBasura, basuraExtrema.posicionyBasura);

    if (DistanBasuras < 90) { 
      // maullidobasura.trigger ();// accion de comer
      gatito.relleno = color(200, 0, 0);
      basuraExtrema.reciclar(); 
      puntajeJuganding.bajarpuntajeExtrema ();

      // vidas[i].colorvidas = color (0);
      vidas1.colorvidas = color (0);
      vidas2.colorvidas = color (0);
      vidas3.colorvidas = color (0);
      estado = 3;

      perder.trigger ();
      dojo.pause ();
      dojo.rewind ();
    }
  }



  void comerBasura() {

    for (int i=0; i<basuras.length; i++) {
      float DistanBasuras = dist(mouseX, gatito.posicionyGatito, basuras[i].posicionxBasura, basuras[i].posicionyBasura);

      if (DistanBasuras < 90) {   // accion de comer
        // maullidobasura.trigger ();
        gatito.relleno = color(200, 0, 0);
        basuras[i].reciclar(); 
        puntajeJuganding.bajarpuntaje();
        vidas1.colorvidas = color (0);

        if (puntajeJuganding.a == -2) {
          vidas2.colorvidas = color (0);
        }

        if (puntajeJuganding.a == -3) {
          vidas3.colorvidas = color (0);
          estado = 3;
          perder.trigger ();
          dojo.pause ();
          dojo.rewind ();
        }
      }
    }//fin for
  }

  void keyPressed() {

    if (key == 'A' || key == 'a'  && estado==0) {
      estado = 1;
      //  dojo.loop ();
    }

    if (key == 'b'  && estado==1) {
      estado = 2;
      dojo.loop ();
    }

    if (key == 'C' || key == 'c'  && estado==3) {
      estado = 0;
      Reiniciar();
    }
  }

  void Reiniciar() {

    estado = 0;

    vidas1.colorvidas = color (200, 0, 0);
    vidas2.colorvidas = color (200, 0, 0);
    vidas3.colorvidas = color (200, 0, 0);

    puntajeJuganding.x = 0;
    puntajeJuganding.a = 0;
    puntajeJuganding.posicionxPuntos = 120;
    puntajeJuganding.posicionyPuntos = 90;

    for (int i=0; i<basuras.length; i++) {
      basuras[i] = new BASURA ((random (10, 780)), (random(-height/2, 0)), 120, 120, 8);
    }                     //Declarar arreglo Sushis con ciclo for

    for (int i=0; i<sushis.length; i++) {
      sushis[i] = new SUSHI ((random (50, 750)), (random(-height/2, 0)), 120, 120, 4);
    }                       //Declarar arreglo

    sushiExtremo = new SUSHI((random (50, 750)), (random( -800, 0)), 130, 130, 4, 10);
    basuraExtrema = new BASURA ((random (10, 780)), (random( -800, 0)), 120, 120, 8, 8);
  }
}
