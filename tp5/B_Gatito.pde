class GATITO {

  float posicionxGatito = mouseX; //Coordenada x
  float posicionyGatito = height/2; //Coordenada y
  float tamano1Gatito; 
  float tamano2Gatito; 
  color relleno;
  PImage gatito;



  GATITO (int posx, int posy, int ancho, int alto ) {  //CONSTRUCTOR

    gatito = loadImage("gatito.png");

    posicionxGatito = posx;
    posicionyGatito = posy;
    tamano1Gatito = ancho; 
    tamano2Gatito = alto;
    relleno = color(0, 100, 20);
  }



  void mostrar() {
    fill (relleno);
    rectMode (CENTER);
 //   rect (mouseX, posicionyGatito, tamano1Gatito -50, tamano2Gatito -50);
    image (gatito, mouseX, posicionyGatito, tamano1Gatito, tamano2Gatito);
  }  
  
  
  
}
