//CLASE PASTO
class BolaDePasto {

  float posicionx ; //Coordenada x
  float posiciony ; //Coordenada y
  float tamano1 ; 
  float tamano2 ; 

  PImage boladepasto;

  float Vel;

  BolaDePasto(int posx, int posy, int t1, int t2, float vel) { //Constructor

    posicionx = posx;
    posiciony = posy;
    tamano1 = t1;
    tamano2 = t2;
    Vel=vel;

    boladepasto = loadImage ("boladepasto.png");
  }


  void mostrar() {
    image(boladepasto, posicionx, posiciony, tamano1, tamano2);
  }

  void mover() {

    posicionx =posicionx+Vel;
  }


  void cambiodireccion() {
    
if (keyPressed==true){
    if ( posicionx<250 && posicionx>0) {
      posicionx=posicionx+5;
      posiciony=posiciony-1;
    } else if ( posicionx>250 && posicionx<450) {
      posicionx=posicionx+5;
      posiciony=posiciony+1;
    } else if (  posicionx>450 && posicionx<width) {
      posicionx=posicionx+5;
      posiciony=posiciony+-1;
    } else {
      posicionx=0;
      posiciony=650;
    }
  }
  
  
  }
}
