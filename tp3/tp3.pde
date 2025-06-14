PImage imagen0;
int cant = 600;
int c1 = color (0);
int c2=color  (255);
int c3 = color (0);
int c4=color  (255);
int tamCuadrado = 40;
int tamCirculo = 20;

//https://youtu.be/l-FaRdlF7QM?si=nmKbFjLAlt-4X22-

void setup(){
 size(800,400);
 imagen0 =loadImage("imagen0.jpg");
 
}


void draw(){
background (200);
image(imagen0,0,0,400,400); 
cuadradoBlanco (400,200,200,200);
cuadradoNegro (400,200,100,100);
circuloBlanco (400,200,200,200);
circuloNegro(400,200,200,200);
 }
// no se porque me da este mensaje en azul  que el valor i1 no lo estoy usando pero cuando lo quiero usar me dice que lo estoy repitiendo, no supe como solucionarlo
 
 void cuadradoNegro (int i1,int y1, int y2, int i2) {
push();  
fill (c1);
translate(400,0);
for (int y = 3; y < cant; y +=80) {
   for (int i = 3; i < cant; i += 80) {
    rect(i, y, tamCuadrado, tamCuadrado);
    }
  }
translate(40,40);
 for (int y=2; y < cant; y +=80){
   for(int i =2; i <cant; i +=80){
     rect(i, y, 40, 40);
   }
 }
 pop();
}
//ciclo for anidado ayuda a formar muchas figuras
//push y pop ayudan a encerrar al translate o al rotate haciendo que no modifique nada que se escriba despues del pop
// translate muve el canva a la posicion que vos le des
void cuadradoBlanco (int i1,int y1, int i2, int y2) {
push();
fill (c2);
translate(400,-40);
for (int y = 2; y < cant; y +=80) {
   for (int i = 2; i < cant; i += 80) {
   rect(i, y, tamCuadrado, tamCuadrado);
    }
  }
  translate(40,40);
 for (int y=2; y < cant; y +=80){
   for(int i =2; i <cant; i +=80){
     rect(i, y, 40, 40);
   }
 }
 pop();
}

void circuloBlanco (int i1,int y1, int i2, int y2) {
push();  
fill (c4);
noStroke();
translate(420,20);
for (int y = 2; y < cant; y +=80) {
   for (int i = 2; i < cant; i += 80) {
    ellipse(i, y, tamCirculo, tamCirculo);
    }
  }
translate(40,40);
 for (int y=2; y < cant; y +=80){
   for(int i =2; i <cant; i +=80){
     ellipse(i, y, 20, 20);
   }
 }
 pop();
}
void circuloNegro (int i1,int y1, int i2, int y2) {
push();  
fill (c3);
noStroke();
translate(420,-20);
for (int y = 2; y < cant; y +=80) {
   for (int i = 2; i < cant; i += 80) {
    ellipse(i, y, tamCirculo, tamCirculo);
    }
  }
translate(40,40);
 for (int y=2; y < cant; y +=80){
   for(int i =2; i <cant; i +=80){
     ellipse(i, y, 20, 20);
   }
 }
 pop();
}
// ramdom funciona para cambiar valores random mente 
// la funcion boolean ayuda a determinar cuando se establece una accion ya sea si es true o false
boolean camcolor (int x,int y) {
    if ((x == color(random(255),random(255),random(255))) && (y == color(random(255),random(255),random(255)))) {
      return true;
    } else {
      return false;
    }
    }
  
void mouseMoved() {
  // constrain ayuda a restringir un valor para que no llegue ni a su maximo ni a su minimo
 // pmouseX es la posicion anterior del mouse en  X
  if (mouseX > pmouseX) {
    tamCuadrado = constrain(tamCuadrado + 1, 20, 100);} else if (mouseX < pmouseX){
    tamCirculo = constrain(tamCirculo + 1, 10, 60);
  } if (mouseX < pmouseX) {
    tamCuadrado = constrain(tamCuadrado - 1, 20, 100);} else if (mouseX < pmouseX){
    tamCirculo = constrain(tamCirculo - 1, 10, 60);
  }
}

 void mousePressed () {
      c1 = color(random(255),random(255),random(255));
      c2 = color(random (255),random(255),random(255));
      c3 = color(random(255),random(255),random(255));
      c4 = color(random (255),random(255),random(255));
      }
 
  void keyPressed () {
    if ( (camcolor(c1,c2) == false) && (key == 'r')) {
      c1 = 0;
      c2 = 255;
      c3 = 0;
      c4 = 255;
      }
   if (key == 'r') {
      tamCuadrado = 40;
      tamCirculo = 20;
      }
 }
    
