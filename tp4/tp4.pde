//https://drive.google.com/file/d/1TgLyp40HLpnbGM1WVQpTgptSX38kc_hQ/view?usp=sharing
//tuve inconvenientes para subirlo a youtube por eso lo mando por drive

Desierto desierto; //Declara el objeto

void setup() {
  size(800, 800);
  smooth();

  desierto = new Desierto ( 0, 0);
  
}

void draw() {
  background(0);
  desierto.mostrar();
 
}
