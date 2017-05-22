PGraphics pg;
PShader colorFilter, toon, vert;
boolean applyFilter = true;


void videoRes(){
  
  clear();
  image(cam, 0, 0);
 // rect(400,400,300,100);
 
}

void keyPressed(){
  if(key == 'y'){
    applyFilter = true;
   toon = loadShader("colorFrag.glsl", "colorVert.glsl");
   if (applyFilter == true) {
      shader(toon);
    }
 }
 if(key == 'n'){
   applyFilter = false;
   resetShader();
  
 }
}