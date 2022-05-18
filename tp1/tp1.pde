// DECLARACION VARIABLES
int x ;
int y;
int a;
int h;
int xtc;
int ytc;
int xtn;
int ytn;
int ubicacionNombresSolos1;
int ubicacionNombresSolos2;
int tamanohojas;

String textoplay;
boolean b;

float ymv; 
float vel ;
float radio ;

float xhf, yhf;
float diametro;
int direccion;
float r;


PFont textcosas;
PFont textnombres;
PFont play;
PFont logo;

PImage hoja1;
PImage hoja2;
PImage hoja3;
PImage hoja4;
PImage hoja5;
PImage hoja6;
PImage hoja7;
PImage hoja8;
PImage hoja9;
PImage hoja10;
PImage hoja11;
PImage hoja12;
PImage hoja13;

PImage LogoF;


//SETUP

void setup() {

  size(600, 600); 
  background(0);

  //ASIGNACION VARIABLES
  x = 525;
  y = 520;
  a = 100;
  h = 40;
  b = false;
  xtc= width/2;
  ytc= 250;
  xtn= height/2;
  ytn= 290;
  ubicacionNombresSolos1= 250;
  ubicacionNombresSolos2= 350;

  xhf = 70;
  yhf = 70;
  diametro = 100;

  ymv = 50.0;
  vel = 0.7;
  radio = 70.0;

  direccion = 20;
  r = diametro / 2;

  textcosas= loadFont("InkFree-35.vlw");
  textnombres= loadFont("Dialog.plain-25.vlw");
  play= loadFont("ArialMT-48.vlw");
  logo=loadFont("ArialMT-48.vlw");

  LogoF= loadImage("Ilustración.png");

  hoja1= loadImage("1.png");
  hoja2=loadImage("2.png");
  hoja3=loadImage("3.png");
  hoja4=loadImage("4.png");
  hoja5=loadImage("5.png");
  hoja6=loadImage("6.png");
  hoja7=loadImage("7.png");
  hoja8=loadImage("8.png");
  hoja9=loadImage("9.png");
  hoja10=loadImage("10.png");
  hoja11=loadImage("11.png");
  hoja12=loadImage("12.png");
  hoja13=loadImage("13.png");

  tamanohojas= 50;

  smooth();
  noStroke();
  imageMode(CENTER);
}


//DRAW

void draw() {
  background(0);
  println( frameCount, frameCount/60);
  fill(255);

  if (b) {
    textFont(play);
    textoplay= "STOP";

    //movimiento hojas

    if ( b && frameCount > 120 && frameCount < 1700) {
      background(0);
      ymv = ymv + vel;

      image(hoja1, 50, ymv, radio, radio);
      image(hoja2, 100, ymv-100, radio, radio);
      image(hoja3, 400, ymv-200, radio, radio);
      image(hoja4, 50, ymv-400, radio, radio);
      image(hoja5, 200, ymv-150, radio, radio);
      image(hoja6, 100, ymv-250, radio, radio);
      image(hoja7, 400, ymv-350, radio, radio);
      image(hoja8, 500, ymv-450, radio, radio);
      image(hoja9, 550, ymv-500, radio, radio);
      image(hoja10, 500, ymv-100, radio, radio);
      image(hoja11, 400, ymv-200, radio, radio);
      image(hoja12, 300, ymv-550, radio, radio);
      image(hoja13, 550, ymv-150, radio, radio);

      image(hoja8, 100, ymv-600, radio, radio);
      image(hoja9, 250, ymv-700, radio, radio);
      image(hoja10, 400, ymv-1000, radio, radio);
      image(hoja11, 150, ymv-1000, radio, radio);
      image(hoja12, 500, ymv-950, radio, radio);
      image(hoja13, 400, ymv-850, radio, radio);
      image(hoja1, 50, ymv-1100, radio, radio);
      image(hoja2, 100, ymv-1200, radio, radio);
      image(hoja3, 400, ymv-1250, radio, radio);
      image(hoja4, 300, ymv-1050, radio, radio);


      /*if (ymv > height + radio) {
       ymv = -radio;
       }*/
    }

    //credits
    if ( frameCount < 350   && b) {  
      textAlign(CENTER, CENTER);
      textFont(textcosas);
      text("created and written by", xtc, ytc);
      textFont(textnombres);
      text("ALICE OSEMAN", xtn, ytn);
    } else if ( frameCount > 350 && frameCount < 550 && b ) {  
      textAlign(CENTER, CENTER);
      textFont(textcosas);
      text("directed by", xtc, ytc);
      textFont(textnombres);
      text("EUROS LYN", xtn, ytn);
    } else if ( frameCount > 550 && frameCount < 750 && b ) {  
      textAlign(CENTER, CENTER);
      textFont(textcosas);
      text("produced by", xtc, ytc);
      textFont(textnombres);
      text("ZORANA PIGOTT", xtn, ytn);
    } else if ( frameCount > 750 && frameCount < 950 && b ) {  
      textAlign(CENTER, CENTER);
      textFont(textnombres);
      text("KIT CONNOR", ubicacionNombresSolos1, ytc);
      text("JOE LOCKE", ubicacionNombresSolos2, ytn);
    } else if ( frameCount > 950 && frameCount < 1150 && b ) {  
      textAlign(CENTER, CENTER);
      textFont(textnombres);
      text("WILLIAM GAO", ubicacionNombresSolos1 + 100, ytc);
      text("YASMIN FINNEY", ubicacionNombresSolos2 - 100, ytn);
    } else if ( frameCount > 1150 && frameCount < 1350 && b ) {  
      textAlign(CENTER, CENTER);
      textFont(textnombres);
      text("CORINA BR0WN", xtc, ytc);
      text("KIZZY EDGEL", xtn, ytn);
    } else if ( frameCount > 1350 && frameCount < 1550 && b ) {  
      textAlign(CENTER, CENTER);
      textFont(textnombres);
      text("TOBIE DONOVAN", xtc, ytc);
      text("SEBASTIAN CROFT", xtn, ytn);
    } else if ( frameCount > 1550 && frameCount < 1700 && b ) {  
      textAlign(CENTER, CENTER);
      textFont(textcosas);
      text("Based on the graphic novel by", xtc, ytc);
      textFont(textnombres);
      text("ALICE OSEMAN", xtn, ytn + 10);
    } else if ( frameCount > 1750 && frameCount < 2100 && b ) {  
      //textAlign(CENTER);
      //textFont(logo);
      //text("HEARTSTOPPER", width/2, height/2 );

      background(0);
      image(LogoF, width/2, height/2 -20, 530, 500);

      image(hoja1, 540, 200, random(80, 90), random(80, 90));
      image(hoja11, 40, 350, random(80, 90), random(80, 90));
      
      
    } else if ( frameCount > 1950 && frameCount < 2450 && b ) {  
      image(hoja11, 40, 350, diametro, diametro);
      if ( r < 0 ) { 
        direccion = 20;
      }
      diametro+=direccion;
    }
  } else {
    background(0);

    textFont(play);
    textoplay= "PLAY";
  }


  fill(100);
  rectMode(CORNER);

  rect(x, y, a, h);
  fill(255);

  textFont(play);
  textAlign(CORNER, CORNER);
  textSize(17);
  text(textoplay, 533, 547);
}

//BOTON

void mousePressed() {
  if ((mouseX> x) && (mouseX < x + a) && (mouseY> y) && (mouseY < y+ h)) { 
    if (b) {
      b=false;
    } else {
      b= true;
    }
  }
}
