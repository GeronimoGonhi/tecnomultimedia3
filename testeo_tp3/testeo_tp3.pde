//https://www.youtube.com/watch?v=zeLvwvhInDk

color [] colores = {color (140, 223, 232), color(112, 92, 175)};
int [] coloresOjos ={color (255, 0, 0), color(220, 0, 0), color(255, 100, 100)};
int pantalla;
int saltarPantalla =1;
int continuarPantalla =0;
PImage [] imagenes;
PImage menu;
PImage imagenIzquierda;
PImage imagenDerecha;
int [] clickArea = {375, 475, 200, 100};
int [] clickArea2 = {25, 475, 200, 100};

void setup () {
  background (0);
  menu = loadImage ("menu.png");
  imagenIzquierda = loadImage ("sol.png");
  imagenDerecha = loadImage ("luna.png");
  imagenes = new PImage [13];
  for (int i = 0; i < imagenes.length; i++) {
    if (i == 0) {
      imagenes[i] = loadImage(i+".png");
    } else {
      imagenes[i] = loadImage(i +".png");
    }
  }
  size (600, 600);
}
void draw() {
  int ojosLeon = int (random(coloresOjos.length));
  int colorRandom = coloresOjos[ojosLeon];

  push();
  switch (pantalla) {
  case 0:
    int cielo = (int)map(mouseX, 0, width, 0, 2);
    background(colores [cielo]);
    if (mouseX < width /2) {
      image (imagenIzquierda, 0, 0 );
    } else {
      image (imagenDerecha, 0, 0);
    }
    image (menu, 0, 0, 600, 600);
    textSize(50);
    dibujarBoton("INICIAR", 375, 475, 200, 100, 50);
    break;
  case 1:
    image(imagenes[1], 0, 0);
    fill (1, 100);
    rect (0, 0, 600, 100);
    textSize(20);
    fill (255);
    text ("El ratón se despertó para ir a trabajar cuando se percató de que alguien \nhabía puesto una montaña en frente de su casa\n¿Quien pondría una montaña aqui? Debia salír asi que debia trepar", 5, 5, 600, 600 );
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("siguiente", 25, 475, 200, 100, 50);
    break;
  case 2:
    image(imagenes[2], 0, 0);
    fill (1, 100);
    rect (0, 490, 600, 90);
    textSize(22);
    fill (255);
    text ("Al subir se dio cuenta de que\nno era una montaña, sinó un gran León", 0, 500, 500, 500);
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("siguiente", 375, 475, 200, 100, 50);
    break;
  case 3:
    background (colorRandom);
    image(imagenes[3], 0, 0);
    fill (1, 100);
    rect (0, 0, 600, 100);
    textSize(20);
    fill (255);
    text ("¿Que tenemos aquí? Un pequeño ratón... Y yo que justo me moría de hambre\nEl ratón asustado penso en dos posibilidades:", 5, 5, 600, 600 );
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("Dialogar", 375, 475, 200, 100, 50);
    dibujarBoton("Morderlo", 25, 475, 200, 100, 50);
    //saltar a pantalla 4 (morderrlo) o pantalla 5 (dialogar)
    break;
  case 4: //morderlo
    background (colorRandom);
    image(imagenes[4], 0, 0);
    fill (1, 100);
    rect (0, 0, 600, 100);
    textSize(20);
    fill (255);
    text ("-Jaja!!!¿Crees que eso te salvará ratoncito? Voy a degustar tus huesos\n-No señor León, lo siento, hablemos\n-Ya no hay tiempo de hablar, tengo hambre", 5, 5, 600, 600 );
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("siguiente", 375, 475, 200, 100, 50);
    //siguiente pantalla, pantala 12
    break;
  case 5: //dialogar
    image(imagenes[5], 0, 0);
    fill (1, 100);
    rect (0, 0, 600, 200);
    textSize(20);
    fill (255);
    text ("-Señor León, no me coma, soy muy pequeño y se quedará con hambre. Además si no me come le estaré en deuda y te ayudare con lo que sea\n-¿Y para que querría la ayuda de un ser tan diminuto?\n-Pues nunca se sabe, los ratones podemos hacer muchas cosas\n-Jajaja!!! Me convenciste con tu valentía, eres libre, ahora estás en deuda conmigo", 5, 5, 600, 600 );
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("siguiente", 25, 475, 200, 100, 50);
    break;
  case 6:
    image(imagenes[6], 0, 0);
    fill (1, 100);
    rect (0, 0, 600, 100);
    textSize(20);
    fill (255);
    text ("El león dejó al ratón en su madriguera y se fue\nAl cabo de un rato se escuchan los rujidos de auxilio del León\n-Antes lo digo, antes pasa, pensó el ratón", 5, 5, 600, 600 );
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("siguiente", 375, 475, 200, 100, 50);
    break;
  case 7:
    image(imagenes[7], 0, 0);
    fill (1, 100);
    rect (0, 350, 600, 125);
    textSize(20);
    fill (255);
    text ("El ratón corre al socorro del León y lo encuentra enredado en una red\n-Ratón, ayudame, rapido, muerde las cuerdas!!!\n-Pero los cazadores no tardan en llegar\n-Si me liberas, los ahuyentaré con mi rujido", 0, 350, 600, 600);
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("Salvarlo", 375, 475, 200, 100, 50);
    dibujarBoton("Huír", 25, 475, 200, 100, 50);
    //saltar a pantalla 8 (huír) o pantalla 9 (liberarlo)
    break;
  case 8: //Huír (final malo 2)
    image(imagenes[8], 0, 0);
    fill (1, 100);
    rect (0, 0, 600, 100);
    textSize(20);
    fill (255);
    text ("El ratón huyó sin mirar atras mientras se oía el arribo de los cazadores y los rujidos maldicientes del León\nFin.", 5, 5, 600, 600 );
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("volver", 375, 475, 200, 100, 50);
    break;
  case 9: //salvarlo
    image(imagenes[9], 0, 0);
    fill (1, 100);
    rect (0, 0, 600, 130);
    textSize(20);
    fill (255);
    text ("El ratón empezó a morder las cuerdas a ritmo frenetico mientras los cazadores se acercaban\n-Apresurate Ratón\n-Voy tan rapido como puedo", 5, 5, 600, 600 );
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("siguiente", 25, 475, 200, 100, 50);
    break;
  case 10:
    image(imagenes[10], 0, 0);
    fill (1, 100);
    rect (0, 490, 600, 90);
    textSize(22);
    fill (255);
    text ("Ya está!! El ratón liberó al León y juntos\nauyentaron a los cazadores.", 0, 500, 500, 500);
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("siguiente", 375, 475, 200, 100, 50);
    break;
  case 11: //final bueno (original)
    image(imagenes[11], 0, 0);
    fill (1, 100);
    rect (0, 490, 600, 90);
    textSize(22);
    fill (255);
    text ("Desde entonces se volvieron amigo inseparables\ny vivieron felices por siempre Fin.", 0, 500, 500, 500);
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("Volver", 375, 475, 200, 100, 50);
    //volver a pantalla 0
    break;
  case 12: //(final malo1)
    image(imagenes[12], 0, 0);
    fill (1, 100);
    rect (0, 0, 600, 100);
    textSize(20);
    fill (255);
    text ("El León enguyó al Ratón de un solo bocado y siguió durmiendo placidamente\nFin.", 5, 5, 600, 600 );
    textSize(50);
    fill (200, 100, 50, 100);
    dibujarBoton("Volver", 25, 475, 200, 100, 50);
    break;
  }
  pop();
}
void dibujarBoton(String textBotn, int x, int y, int w, int h, int r) {
  fill (200, 100, 50, 100);
  rect (x, y, w, h, r);
  textAlign(CENTER, CENTER);
  fill (1);
  stroke(1);
  text(textBotn, x + w/2, y + h/2);
}

//rutas de las pantallas
void keyPressed() {
  if (key ==' ') {
    pantalla ++;
    if (pantalla >12) {
      pantalla =0;
    }
  }
}

void mouseClicked() {
  //rutas de las pantallas (que pantallas te llevan a que pantallas)
  if ((pantalla == 0) && mouseX >clickArea[0] && mouseX < clickArea[0] + clickArea[2] && mouseY > clickArea[1] && mouseY <clickArea[1]+clickArea[3]) {
    pantalla = 1;
  }
  if ((pantalla == 3) && mouseX >clickArea[0] && mouseX < clickArea[0] + clickArea[2] && mouseY > clickArea[1] && mouseY <clickArea[1]+clickArea[3]) {
    pantalla = 5;
  } else if ((pantalla == 3) && mouseX >clickArea2[0] && mouseX < clickArea2[0] + clickArea2[2] && mouseY > clickArea2[1] && mouseY <clickArea2[1]+clickArea2[3]) {
    pantalla = 4;
  }
  if ((pantalla == 7) && mouseX >clickArea[0] && mouseX < clickArea[0] + clickArea[2] && mouseY > clickArea[1] && mouseY <clickArea[1]+clickArea[3]) {
    pantalla = 9;
  } else if ((pantalla == 7) && mouseX >clickArea2[0] && mouseX < clickArea2[0] + clickArea2[2] && mouseY > clickArea2[1] && mouseY <clickArea2[1]+clickArea2[3]) {
    pantalla = 8;
  }
  if ((pantalla == 4) && mouseX >clickArea[0] && mouseX < clickArea[0] + clickArea[2] && mouseY > clickArea[1] && mouseY <clickArea[1]+clickArea[3]) {
    pantalla = 12;
  }
  if ((pantalla == 8) && mouseX >clickArea[0] && mouseX < clickArea[0] + clickArea[2] && mouseY > clickArea[1] && mouseY <clickArea[1]+clickArea[3]) {
    pantalla = 0;
  }
  if ((pantalla == 11) && mouseX >clickArea[0] && mouseX < clickArea[0] + clickArea[2] && mouseY > clickArea[1] && mouseY <clickArea[1]+clickArea[3]) {
    pantalla = 0;
  }
  if ((pantalla == 12) && mouseX >clickArea2[0] && mouseX < clickArea2[0] + clickArea2[2] && mouseY > clickArea2[1] && mouseY <clickArea2[1]+clickArea2[3]) {
    pantalla = 0;
  }
  if ((pantalla == 2  ||pantalla == 6 ||pantalla == 10) && mouseX >clickArea[0] && mouseX < clickArea[0] + clickArea[2] && mouseY > clickArea[1] && mouseY <clickArea[1]+clickArea[3]) {
    pantalla ++;
  }
  if ((pantalla == 1 || pantalla == 5 || pantalla == 12 || pantalla == 9) && mouseX >clickArea2[0] && mouseX < clickArea2[0] + clickArea2[2] && mouseY > clickArea2[1] && mouseY <clickArea2[1]+clickArea2[3]) {
    pantalla ++;
  }
}
