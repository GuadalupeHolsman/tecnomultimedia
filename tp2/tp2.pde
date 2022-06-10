//URL VIDEO: https://youtu.be/qbIhPjwHzOY
int tam;
boolean aparecer;


void setup() {
  size(600, 600);
  //background(222, 255, 231);
  background(255, 175, 175);
  tam=80;
  
}



void draw() {
  circulos();
}

void circulos() {

  if (aparecer==true) {
    for (int c=0; c<width; c+=tam) {
      for (int c2=0; c2<height; c2+=tam) {
        if (c<mouseX && c2<mouseY) {
          fill(222, random(0, 255), random(0, 255), 15);
          rect(c, c2, tam, tam);
        } else {
          fill(255, 201, 220);
        }


        noStroke();
        ellipse(c, c2, tam, tam);
      }
    }
  }
  if (aparecer==false) {
    background(255, 175, 175);
  }
}


void mousePressed() {
  aparecer=true;
}

void keyPressed() {
  aparecer=false;
}
