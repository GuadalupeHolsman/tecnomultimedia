
//https://youtu.be/DQZNuTJaUmE    
//Aclaracion: tuve dificultadees a la hra de editar el video mil disculpas


String[] creditos; 
String palabras;

int u;
int u2;

int tam;
int ub;

int m;
int m2;
int vm;

int puntos;
int posicionrect;

int Color;

float posX;
float posY;
float vX;
float vY;


boolean caerpelota;

boolean negro1;
boolean negro2;
boolean negro3;
boolean negro4;
boolean negro5;

boolean aparecer1;
boolean aparecer2;
boolean aparecer3;
boolean aparecer4;
boolean aparecer5;

boolean perder;



PFont titulo;
PFont resto;


void setup() {
  size(800, 600 );
  textSize( 30 );
  textAlign( CENTER, CENTER );
  rectMode (CENTER) ;

  palabras = "START";
  u = width/2;
  u2 = height/2 ;
  posX=width/2;
  posY = height/2;
  vX= 3 ;
  vY=3;
  posicionrect=width/2;

  tam=50;
  ub=20; 


  caerpelota=false;
  negro1=false;
  negro2=false;
  negro3=false;
  negro4=false;
  negro5=false;

  aparecer1=true;
  aparecer2=true;
  aparecer3=true;
  aparecer4=true;
  aparecer5=true;



  perder=false;


  m=0;
  m2=800;
  vm= 5;

  Color=0;

  titulo=loadFont ("AgencyFB-Reg-48.vlw");
  resto= loadFont ("ArialMT-48.vlw");

  creditos = loadStrings( "creditos.txt" );
}
