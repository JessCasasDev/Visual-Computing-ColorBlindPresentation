PGraphics pg;
PShader toon;
boolean applyFilter = false, prot = false, deut = false, protFilter = false, deutFilter = false;

void videoRes(){
  
  clear();
  image(cam, 0, 0);
  toon = loadShader("color.glsl");
  if (applyFilter){
    if(deut)
      toon.set("deuteranopia", true);
    if(prot)
      toon.set("protanopia", true);
    if(protFilter)
      toon.set("protanopiaFilter", true);
    if(deutFilter)
      toon.set("deuteranopiaFilter", true);
    filter(toon);    
  }
}

void keyPressed(){
  if(key == 'y'){
    applyFilter = true;
 }
 if(key == 'n'){
   applyFilter = false;
   resetShader();
 }
 if(key == 'p'){
   protFilter = true;
   deutFilter = false;
   deut = false;
   prot = false;
 }
 if(key == 'd'){
   protFilter = false;
   deutFilter = true;
   deut = false;
   prot = false;
 }
 if(key == 'q'){
   protFilter = false;
   deutFilter = false;
   deut = true;
   prot = false;
 }
 if(key == 'w'){
   protFilter = false;
   deutFilter = false;
   deut = false;
   prot = true;
 }
 
}