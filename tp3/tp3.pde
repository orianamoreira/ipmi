PImage imagen0;
int cant = 600;
int c1 = color (0);
int c2=color  (255);
int c3 = color (0);
int c4=color  (255);
int tamCuadrado = 40;
int tamCirculo = 20;

//https://youtu.be/OquA-FSQB4g

void setup(){
 size(800,400);
 imagen0 =loadImage("imagen0.jpg");
 
}


void draw(){
background (200);
image(imagen0,0,0,400,400); 
cuadradosYcirculos ();

 }
void cuadradosYcirculos(){
   for(int y = 0; y <800; y += 80){
    for(int x =0; x< 800; x +=80){
 push();
 //cuadrados blancos
 fill(c2);
 rect(x +400, y -40,tamCuadrado,tamCuadrado);
 rect(x+ 440, y, tamCuadrado, tamCuadrado);
 pop();
 // cuadrados negros
 push();
 fill(c1);
 rect(x +400, y,tamCuadrado,tamCuadrado);
 rect(x+ 440, y+ 40, tamCuadrado, tamCuadrado);
 pop();
 // circulos blancos
 push();
 fill(c4);
 ellipse(x + 420, y +20, tamCirculo,tamCirculo);
 ellipse(x + 460, y + 60,20,20);
 pop();
 //circulos negros
 push();
 fill(c3);
 ellipse(x + 420, y -20, tamCirculo,tamCirculo);
 ellipse(x + 460, y + 20,20,20);
 pop();
      
  }
   }
}

// la funcion boolean ayuda a determinar cuando se establece una accion ya sea si es true o false
boolean camcolor () {
    return mousePressed;
    }
  
void mouseMoved() {
  // constrain ayuda a restringir un valor para que no llegue ni a su maximo ni a su minimo
 // pmouseX es la posicion anterior del mouse en  X
  if (mouseX > pmouseX) {
    tamCuadrado = constrain(tamCuadrado + 1, 20, 100);
  } else if (mouseX < pmouseX) {
    tamCirculo = constrain(tamCirculo + 1, 10, 60);} 
}

 void mousePressed () {
      c1 = color(random(255),random(255),random(255));
      c2 = color(random (255),random(255),random(255));
      c3 = color(random(255),random(255),random(255));
      c4 = color(random (255),random(255),random(255));
      }
 
  void keyPressed () {
    if ( (camcolor() == false) && (key == 'r')) {
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
    
