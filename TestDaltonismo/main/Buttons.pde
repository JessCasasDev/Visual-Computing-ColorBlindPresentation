void update(){
  overBut();
}


int overBut()  {
  select = 0;
  if (mouseX >= bX1 && mouseX <= bX1+bSX && 
      mouseY >= bY && mouseY <= bY+bSY) {
        select = 1;
  } else if (mouseX >= bX2 && mouseX <= bX2+bSX && 
      mouseY >= bY && mouseY <= bY+bSY) {
        select = 2;
  }
  else if (mouseX >= bX3 && mouseX <= bX3+bSX && 
      mouseY >= bY && mouseY <= bY+bSY) {
        select = 3;
  }
  else if (mouseX >= bX4 && mouseX <= bX4+bSX && 
      mouseY >= bY && mouseY <= bY+bSY) {
        select = 4;
  }
  return select;
}

void buttons(){
  fill(50);
  if(select == 1) fill(10);
  rect(bX1, bY, bSX, bSY);
  fill(255);
  text(text[step][0], bX1 + bit, bY+bSY/2); 
  fill(50);
  if(select == 2) fill(10);
  rect(bX2, bY, bSX, bSY);
  fill(255);
  text(text[step][1], bX2 + bit, bY+bSY/2); 
  fill(50);
  if(select == 3) fill(10);
  rect(bX3, bY, bSX, bSY);
  fill(255);
  text(text[step][2], bX3 + bit, bY+bSY/2); 
  fill(50);
  if(select == 4) fill(10);
  rect(bX4, bY, bSX, bSY);
  fill(255);
  text(text[step][3], bX4 + bit, bY+bSY/2); 
  fill(50);
}


void loadText(){
  text = new String[21][4];
  // Carta para protanopia
  text[0][0] = "12"; //Normal
  text[0][1] = "1";
  text[0][2] = "2";
  text[0][3] = "Ninguno";
  
  // Carta para protanopia
  text[1][0] = "3"; //Rojo-verde - Protanopia
  text[1][1] = "8"; //Normal
  text[1][2] = "5"; //+protanopia
  text[1][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para protanopia
  text[2][0] = "6"; //Normal
  text[2][1] = "8"; //+protanopia
  text[2][2] = "5"; //Rojo-verde - Protanopia
  text[2][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para protanopia
  text[3][0] = "70";  //Rojo-verde - Protanopia
  text[3][1] = "58"; //+protanopia
  text[3][2] = "29"; //Normal
  text[3][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para protanopia
  text[4][0] = "35"; //Rojo-verde - Protanopia
  text[4][1] = "57"; //Normal
  text[4][2] = "51"; //+protanopia
  text[4][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para protanopia
  text[5][0] = "75"; //+protanopia
  text[5][1] = "45"; //Normal
  text[5][2] = "2"; //Rojo-verde - Protanopia
  text[5][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Deuteranopia
  text[6][0] = "2"; //Rojo-verde - Protanopia
  text[6][1] = "7"; //+deuteronopia 
  text[6][2] = "5"; //Normal
  text[6][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Deuteranopia
  text[7][0] = "3"; //Normal
  text[7][1] = "";
  text[7][2] = "5"; //Rojo-verde - Protanopia
  text[7][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Deuteranopia
  text[8][0] = "15"; //Normal
  text[8][1] = "17"; //Rojo-verde - Protanopia
  text[8][2] = "21"; //Rojo-verde - Protanopia
  text[8][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Deuteranopia
  text[9][0] = "74"; //Normal
  text[9][1] = "";
  text[9][2] = "21"; //Rojo-verde - Protanopia
  text[9][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Protanopia
  text[10][0] = "2"; //Normal
  text[10][1] = "";
  text[10][2] = "5"; //Rojo-verde - Protanopia
  text[10][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Deuteranopia
  text[11][0] = "";
  text[11][1] = "";
  text[11][2] = "6"; //Normal 
  text[11][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Protanopia
  text[12][0] = "97"; //Normal
  text[12][1] = "";
  text[12][2] = "";
  text[12][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Deuteranopia
  text[13][0] = "3";
  text[13][1] = "2"; //Rojo-verde - Protanopia
  text[13][2] = "5"; //Normal
  text[13][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Deuteranopia
  text[14][0] = "1";
  text[14][1] = "7"; //Normal
  text[14][2] = "";
  text[14][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Deuteranopia
  text[15][0] = "";
  text[15][1] = "16"; //Normal
  text[15][2] = "";
  text[15][3] = "Ninguno"; //Daltonismo indeterminado
  
  // Carta para Deuteranopia
  text[16][0] = "73"; //Normal
  text[16][1] = "13";
  text[16][2] = "78";
  text[16][3] = "Ninguno"; //Daltonismo indeterminado
  
  text[17][0] = "6"; //Prota
  text[17][1] = "2"; //Deute
  text[17][2] = "26"; //Normal
  text[17][3] = "Ninguno"; 
  
  text[18][0] = "42"; //Normal
  text[18][1] = "2"; //Prota
  text[18][2] = "4"; //Deute
  text[18][3] = "Ninguno"; //Rojo-verde - Protanopia
  
  text[19][0] = "35"; //Normal
  text[19][1] = "3"; //Deute
  text[19][2] = "5"; //Prota
  text[19][3] = "Ninguno";
  
  text[20][0] = "6"; //Prota
  text[20][1] = "9"; //Deute
  text[20][2] = "96"; //Normal
  text[20][3] = "Ninguno"; 
  
}