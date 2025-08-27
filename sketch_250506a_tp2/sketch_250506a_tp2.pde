

PImage infinityNikki1, infinityNikki2, infinityNikki3, infinityNikki4 ;
String nombre = "InfinityNikki";
String texto1 = "Es\n un videojuego de fantacia\ny  aventura en un mundo abierto.";
String texto2 = "El juego se basa en torno a Nikki,una estilista que \npuede cambiar de atuendos mágicos\npara obtener distintas habilidades como por ej :\nhun vestido que la hace poseer la habilidad de flotar\n y a medida que vas consiguiendo esos vestuarios\n podes ir avanzando en la trama.";
String texto3 = "Posee un entorno que incluye distintos biomas,\ncriaturas, montruos y acertijos que requieren\n usar ropa con habilidades especificas para cada uno.";
String texto4 = "Reiniciar";
int movimiento1;
int movimiento2;
int movimiento3;
PFont fuente; 



void setup(){
size(640,480);
background(0);
textSize(48);
textAlign( CENTER, CENTER );
println(movimiento1);
println(movimiento2);
fuente = loadFont("Gabriola.vlw"); 
textFont(fuente);
infinityNikki1 =loadImage("infinityNikki1.jpg");
infinityNikki2 =loadImage("infinityNikki2.png");
infinityNikki3 =loadImage("infinityNikki3.png");
infinityNikki4 =loadImage("infinityNikki4.png");
 }

void draw(){
movimiento1 = frameCount/1;
movimiento2 = frameCount/3;
movimiento3 = frameCount/3;
println(movimiento1);
println(movimiento2);
println(movimiento3);

//..........pantalla1
if ( frameCount < 60*5){
background(0);
image(infinityNikki1,0,50);
fill(118,7,7);
text(nombre,movimiento1,250);}
//.........pantalla2
if (frameCount >= 60*5){
background(0);
image(infinityNikki2,0,50);
fill(118,7,7);
text(texto1,300,movimiento2);}
//........pantalla3
if (frameCount > 60*10){
background(0);
image(infinityNikki3,0,50);
fill(118,7,7);
text(texto2,movimiento2,movimiento3);}
//..........pantalla4
if( frameCount >= 60*16){
background(0);
image(infinityNikki4,0,50);
fill(118,7,7);
text(texto3,movimiento3,250);
fill( 5, 7, 113 );
stroke( 0 );
strokeWeight( 1 );
rect( 520, 10, 115, 40 );
fill(200);
text(texto4,580,30);}
}
void mousePressed(){
if ( mouseX > 535 && mouseX < 575+50 && mouseY > 10 && mouseY < 10+50 ){
frameCount = 0;}
  } 
  
  



  





  
  
  
