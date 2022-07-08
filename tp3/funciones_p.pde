void pantallainicio() {


  background(Color);
  rectMode(CENTER);

  fill(255);
  textSize(20);
  text( palabras, u, u2 + 75 );
  text( "Presione la barra espaciadora para continuar", u, u2+100);

  textFont(titulo);
  textSize(100);
  text("ChoqueBloque", u, 200);


  m=m+vm;
  m2=m2-vm;
  rect(m, 300, 200, 50);
  rect(m2, 300, 200, 50);


  pushStyle();
  if ( dist( mouseX, mouseY, u, u2+200) <= 50 ) {
    fill( 200, 0, 0 );
  } else {
    fill( 255);
  }
  ellipse( u, u2+200, 100, 100 );
  fill(200);
  textSize(25);
  text("Creditos", u, u2+200);

  popStyle();
}


void instrucciones() {
  palabras="instrucciones";

  rectMode(CENTER);
  background( 200, 0, 0 );
  noStroke();
  rect(u, u2, 760, 560);

  fill(0);
  textFont(resto); 
  textSize(20);
  text("Objetivo: eliminar todos los bloques y no perder la pelotita", u, u2-75);
  text("Podes utlizar la flechas de izquierda y derecha para mover la barra ", u, u2-50);
  text("¡¡Tene en cuenta que si se cae la pelota PERDES!!", u, u2);

  fill(100);
  textFont(titulo);
  textSize(50);
  text( palabras, u, u2-200 );  

  ellipse( u, u2+200, 50, 50 );
  pushStyle();
  if ( dist( mouseX, mouseY, u, u2+200) <= 50 ) {
    fill( 200, 0, 0 );
  } else {
    fill( 0 );
  }
  ellipse( u, u2+200, 100, 100 );
  popStyle();

  fill(255);
  textSize(20);
  text("PLAY", u, u2+200);
}

void creditos() {
  palabras="creditos";
  textAlign( CENTER, CENTER );
  textSize( 50 );

  for ( int n = 0; n < creditos.length; n++ ) {
    text( creditos[n], width/2, (n * 50) + frameCount-height );
  }
  pushStyle();
  if ( dist( mouseX, mouseY, u, u2+200) <= 50 ) {
    fill( 200, 0, 0 );
  } else {
    fill( 255);
  }
  ellipse( u, u2+200, 100, 100 );
  fill(200);
  textSize(25);
  text("VOLVER", u, u2+200);

  popStyle();
}


void reiniciar() {
  palabras = "START";
}
