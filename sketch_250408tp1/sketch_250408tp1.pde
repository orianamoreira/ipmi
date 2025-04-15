
import processing.net.*;

PImage pikachuDePeluche;


void setup(){   size(800,400);
background(255);
pikachuDePeluche=loadImage("pikachuDePeluche.jpg.jpg");
}




void draw(){ background(255);
image(pikachuDePeluche,0,10);
fill(0);
ellipse(640,110,30,80);
ellipse(560,110,30,80);
noFill();

fill(255,255,0);

stroke(0);
strokeWeight(1);
line(600,100,600,150);

ellipse(640,130,30,80);
ellipse(560,130,30,80);
ellipse(630,310,30,80);
ellipse(570,310,30,80);
ellipse(600,271,100,120);
ellipse(600,178,115,100);
ellipse(560,260,30,80);
ellipse(640,260,30,80);

stroke(255,255,0);
strokeWeight(7);
line(600,100,600,150);

noFill();
stroke(255,255,0);
strokeWeight(3);
circle(600,90,20);

fill(255,255,0);
rect(592,70,15,10);
noFill();
stroke(255,255,0);
ellipse(600,40,30,80);

fill(0);
strokeWeight(1);
ellipse(630,170,20,30);
ellipse(570,170,20,30);
noFill();

fill(252,130,212);
stroke(0);
strokeWeight(1);

circle(600,200,15);

noFill();

fill(0);
stroke(0);
strokeWeight(1);

circle(600,190,8);
noFill();

fill(255);

circle(575,165,15);
circle(625,165,15);
noFill();

fill(255,0,0);

ellipse(635,200,15,25);
ellipse(565,200,15,25);
noFill();
fill(255,0,0);



}
