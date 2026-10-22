int ancho_pantalla=960;
int alto_pantalla=540;
float tamano_fuente= alto_pantalla*0.05;
PFont fuentePersonalizada;
  
void settings (){
  size(ancho_pantalla,alto_pantalla);
  }

void setup() {
  println("El programa ha comenzado!");
  fuentePersonalizada = createFont("fuente.ttf", int(tamano_fuente));
}

void draw () {
  float separacion= ancho_pantalla*0.03;
  float ancho_boton=(ancho_pantalla/2)-separacion;
  float alto_boton=(alto_pantalla/2)-separacion;
  float primer_posicionx=(ancho_pantalla/4)-(ancho_boton/2), primer_posiciony=(alto_pantalla/4)-(alto_boton/2);
  float segunda_posicionx=3*(ancho_pantalla/4)-(ancho_boton/2);
  float segunda_posiciony=3*(alto_pantalla/4)-(alto_boton/2);
  background(0,0,0);
  if(mouseX>primer_posicionx && mouseX<primer_posicionx+ancho_boton && mouseY>primer_posiciony && mouseY<primer_posiciony+alto_boton){
      fill (255,255,0); //primer boton amarillo encendido
    }else{
      fill (128,128,0); //primer boton amarillo apagado
    }
  stroke(255,255,255);
  rect (primer_posicionx, primer_posiciony, ancho_boton, alto_boton);
  fill(128,128,128);
  textFont(fuentePersonalizada);
  textAlign(CENTER,CENTER);
  text("MEMORIA",primer_posicionx + (ancho_boton / 2), primer_posiciony + (alto_boton / 2));
  if(mouseX>segunda_posicionx && mouseX<segunda_posicionx+ancho_boton && mouseY>primer_posiciony && mouseY<primer_posiciony+alto_boton){
      fill (0,0,255); //primer boton azul encendido
    }else{
      fill (0,0,128); //primer boton azul apagado
    }
  stroke(255,255,255);
  rect (segunda_posicionx, primer_posiciony, ancho_boton, alto_boton);
  fill(128,128,128);
  textFont(fuentePersonalizada);
  textAlign(CENTER,CENTER);
  text("REACCION",segunda_posicionx + (ancho_boton / 2), primer_posiciony + (alto_boton / 2));
  if(mouseX>primer_posicionx && mouseX<primer_posicionx+ancho_boton && mouseY>segunda_posiciony && mouseY<segunda_posiciony+alto_boton){
      fill (255,0,0); //primer boton rojo encendido
    }else{
      fill (128,0,0); //primer boton rojo apagado
    }
  stroke(255,255,255);
  rect (primer_posicionx, segunda_posiciony, ancho_boton, alto_boton);
  fill(128,128,128);
  textFont(fuentePersonalizada);
  textAlign(CENTER,CENTER);
  text("TOP",primer_posicionx + (ancho_boton / 2), segunda_posiciony + (alto_boton / 2));
  if(mouseX>segunda_posicionx && mouseX<segunda_posicionx+ancho_boton && mouseY>segunda_posiciony && mouseY<segunda_posiciony+alto_boton){
      fill (0,255,0); //primer boton verde encendido
    }else{
      fill (0,128,0); //primer boton verde apagado
    }
  stroke(255,255,255);
  rect (segunda_posicionx, segunda_posiciony, ancho_boton, alto_boton);
  fill(128,128,128);
  textFont(fuentePersonalizada);
  textAlign(CENTER,CENTER);
  text("DATOS",segunda_posicionx + (ancho_boton / 2), segunda_posiciony + (alto_boton / 2));
  }
