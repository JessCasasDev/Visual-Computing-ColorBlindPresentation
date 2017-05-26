void menu(){
  drawInit();
  drawBut();
}

void drawInit(){
  background(255);
  textSize(30);
  int base = 150;
  int divider = height/15;
  text("Herramienta para", width/8,base);
  text("deteccion de", width/8,base + divider);
  text("daltonismo", width/8,base + divider*2);
  textSize(16);
  text("Andrés Acuña, Jessica Casas,", width/8,base + divider*4);
  text("Carlos Cogua", width/8,base + divider*5);
  text("Seleccione cualquier", width/8,base + divider*7);
  text("opcion", width/8,base + divider*8);
  textSize(20);
  text("Universidad Nacional De Colombia", width/8,base + divider*10);
}

void drawBut(){
  overButMenu();
  buttonsMenu();
}

int overButMenu()  {
  select = 0;
  if (mouseX >= bX && mouseX <= bX+bSX && 
      mouseY >= bY1Menu && mouseY <= bY1Menu+bSY) {
        select = 1;
  } else if (mouseX >= bX && mouseX <= bX+bSX && 
      mouseY >= bY2Menu && mouseY <= bY2Menu+bSY) {
        select = 2;
  }
  else if (mouseX >= bX && mouseX <= bX+bSX && 
      mouseY >= bY3Menu && mouseY <= bY3Menu+bSY) {
        select = 3;
  }
  else if (mouseX >= bX && mouseX <= bX+bSX && 
      mouseY >= bY4Menu && mouseY <= bY4Menu+bSY) {
        select = 4;
  }
  return select;
}

void buttonsMenu(){
  textSize(16); 
  fill(50);
  if(select == 1) fill(10);
  rect(bX, bY1Menu, bSX, bSY);
  fill(255);
  text("Test", bX + bit, bY1Menu + bSY/2); 
  fill(50);
  if(select == 2) fill(10);
  rect(bX, bY2Menu, bSX, bSY);
  fill(255);
  text("Analisis",  bX + bit/3, bY2Menu + bSY/2); 
  fill(50);
  if(select == 3) fill(10);
  rect(bX, bY3Menu, bSX, bSY);
  fill(255);
  text("Camara",  bX + bit/3, bY3Menu + bSY/2); 
  fill(50);
  if(select == 4) fill(10);
  rect(bX, bY4Menu, bSX, bSY);
  fill(255);
  text("Salir",  bX + bit, bY4Menu + bSY/2); 
  fill(50);
}