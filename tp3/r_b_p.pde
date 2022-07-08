//Juego
void bloques() {
  
  palabras="jugando";
  rectMode(CENTER);
  /*for (int x = ub; x <width; x += 70) {
   for (int y = ub; y<150; y+=25) {
   if (negro==true){
   fill(Color);
   
   }else{
   fill(200, 200, 200);
   
   }
   rect(x, y, tam+10, 20);
   
   }
   }*/

  for (int x = ub; x <width; x += 70) {
    if (negro1==true) {
      fill(Color);
    } else {
      fill(200, 200, 200);
    }
    rect(x, 150, tam+10, 20);
  }

  for (int x = ub; x <width; x += 70) {
    if (negro2==true) {
      fill(Color);
    } else {
      fill(200, 200, 200);
    }
    rect(x, 120, tam+10, 20);
  }

  for (int x = ub; x <width; x += 70) {
    if (negro3==true) {
      fill(Color);
    } else {
      fill(200, 200, 200);
    }
    rect(x, 90, tam+10, 20);
  }


  for (int x = ub; x <width; x += 70) {
    if (negro4==true) {
      fill(Color);
    } else {
      fill(200, 200, 200);
    }
    rect(x, 60, tam+10, 20);
  }
  for (int x = ub; x <width; x += 70) {
    if (negro5==true) {
      fill(Color);
    } else {
      fill(200, 200, 200);
    }
    rect(x, 30, tam+10, 20);
  }
}

void pelotayrect() {
  palabras="jugando";
  
  if (caerpelota==false) {
    text( "Presione ENTER para iniciar", u, u2+200);
  }
  fill(200, 0, 0);

  if (caerpelota==true) {
    posY= posY +vY;
    posX= posX +vX;
    fill(200, 0, 0);
    ellipse (posX, posY, 20, 20) ;
    fill(255);
    rectMode (CORNER) ;
    rect(posicionrect, 450, 200, 20);


    if (posX>width || posX<0) {
      vX= vX*-1;
    }
    if (posY>height ) {
      //vY= vY*-1;
      palabras = "perder";
    }

    if ( posY<170 && aparecer1==true) {
      vY= vY*-1;
      negro1=true;
      aparecer1=false;
    }

    if ( posY<120 && aparecer2==true ) {
      vY= vY*-1;
      negro2=true;
      aparecer2=false;
    }
    if ( posY<100 && aparecer3==true ) {
      vY= vY*-1;
      negro3=true;
      aparecer3=false;
    }

    if ( posY<70 && aparecer4==true ) {
      vY= vY*-1;
      negro4=true;
      aparecer4=false;
    }
    
    if ( posY<40 && aparecer5==true ) {
      vY= vY*-1;
      negro5=true;
      aparecer5=false;
      
    }



    if (posY>450 && posX>posicionrect && posX<posicionrect+200) {
      println("tocando");

      vY=vY*-1;
    }
  }
}
