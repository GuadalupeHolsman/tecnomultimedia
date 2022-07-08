
void draw() {
  background (Color) ;
  println( frameCount, frameCount/60);


  //INICIO
  if ( palabras.equals("START") ) {
    pantallainicio();



    //INSTRUCCIONES
  } else if ( palabras.equals("instrucciones") ) {
    instrucciones();



    //JUGANDO
  } else if ( palabras.equals("jugando") ) {

    fill(200, 0, 0);
    textSize(30);
    text("puntos:", 100, 550);


    if ( dist( mouseX, mouseY, 750, 510) <= 25 ) {
      fill(255);
    } else {
      fill(200, 0, 0);
    }

    ellipse(750, 510, 100, 40);
    fill(255);
    textFont(resto); 
    textSize(20);
    text("inicio", 750, 510);


    if ( dist( mouseX, mouseY, 725, 560) <= 25 ) {
      fill(255);
    } else {
      fill(200, 0, 0);
    }
    ellipse(750, 560, 200, 40);
    fill(255);
    textFont(resto); 
    textSize(18);
    text("¿Como se juega?", 725, 560);



    bloques();
    pelotayrect();
    

if(aparecer5==false){
  palabras="ganar";
}



    //GANAR-PERDER
  } else if ( palabras.equals("ganar") ) {
    
     background(Color);
  textFont(titulo);
  textSize(100);
  text("GANASTE", width/2, height/2);
  textFont(resto); 
  textSize(18);
  text( "Presione ENTER para reiniciar", u, u2+100);
    
    
    
  } else if ( palabras.equals("perder") ) {
    background(Color);
  textFont(titulo);
  textSize(100);
  text("GAMEOVER", width/2, height/2);
  textFont(resto); 
  textSize(18);
  text( "Presione ENTER para reiniciar", u, u2+100);
    
    
  
  } else if ( palabras.equals("creditos") ) {
  creditos();
    
}
}
