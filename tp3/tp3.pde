PImage imagen0;
int c1 = color (0);
int c2=color  (255);
int c3= color (0);
int c4= color (255);
int tamCuadrado = 40;
int tamCirculo = 20;
int ubicacion= 400;
boolean resultado;


void setup(){
 size(800,400);
 imagen0 =loadImage("imagen0.jpg");
 
}


void draw(){
background (200);
image(imagen0,0,0,400,400); 
cuadradosYcirculos ( 400);

 }
void cuadradosYcirculos(int ubicacion){
 if(camcolor(false)){
   c1= color(random(255),random(255),random(255));
   c2=color(random(255),random(255),random(255));
   c3= color(random(255),random(255),random(255));
   c4=color(random(255),random(255),random(255));
   }
   for(; ubicacion <800; ubicacion+=80){
    for(int y =0; y< 800; y +=80){
 push();
 //cuadrados blancos
 fill(c2);
 rect(ubicacion, y -tamCuadrado,tamCuadrado,tamCuadrado);
 rect(ubicacion+tamCuadrado, y , tamCuadrado, tamCuadrado);
 pop();
 // cuadrados negros
 push();
 fill(c1);
 rect(ubicacion, y,tamCuadrado,tamCuadrado);
 rect(ubicacion+tamCuadrado, y+ tamCuadrado, tamCuadrado, tamCuadrado);
 pop();
 // circulos blancos
 push();
 fill(c4);
 ellipse(ubicacion+tamCirculo, y+3+tamCirculo, tamCirculo,tamCirculo);
 ellipse(ubicacion+60, y + 60,tamCirculo,tamCirculo);
 pop();
 //circulos negros
 push();
 fill(c3);
 ellipse(ubicacion+tamCirculo, y -tamCirculo, tamCirculo,tamCirculo);
 ellipse(ubicacion+60, y + tamCirculo,tamCirculo,tamCirculo);
 pop();
      
  }
   }
}
//color(random(255),random(255),random(255));
// la funcion boolean ayuda a determinar cuando se establece una accion ya sea si es true o false
boolean camcolor (boolean resultado) {
    if (mousePressed) {
      resultado= true;
      
    } else {
      resultado=false;}
      return resultado;
}
   
     
      
void mouseMoved() {
  // constrain ayuda a restringir un valor para que no llegue ni a su maximo ni a su minimo
 // pmouseX es la posicion anterior del mouse en  X
  if (mouseX > pmouseX) {
   tamCirculo = constrain(tamCirculo +1, 10, 60);
  } 
}

  void keyPressed () {
    if ( (camcolor ( resultado) == false) && (key == 'r')) {
      c1 = 0;
      c2 = 255;
      c3= 0;
      c4= 255;
      }
   if (key == 'r') {
      tamCuadrado = 40;
      tamCirculo = 20;
      }
 }
    
