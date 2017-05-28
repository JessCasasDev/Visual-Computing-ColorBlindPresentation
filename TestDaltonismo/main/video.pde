PGraphics pg;
PShader colorFilter, toon, vert;
boolean applyFilter = false;


void videoRes(){
  
  clear();
  image(cam, 0, 0);
  toon = loadShader("color.glsl");
  float c = 1.0; // Contrast is maximum
  float s = map( mouseX / (float) width,  0.0, 1.0, 0.0, 1.5 ); // map the saturation to the horizontal position of the cursor
  float b = map( mouseY / (float) height, 0.0, 1.0, 0.3, 1.5 ); // map the brightness to the vertical position of the cursor

  // Pass the parameters to the shader
  toon.set( "contrast",   c );
  toon.set( "saturation", s );
  toon.set( "brightness", b );
  if (applyFilter)
  filter(toon);
  //filter(loadShader("color.glsl"));
 // rect(400,400,300,100);
 
}

void keyPressed(){
  if(key == 'y'){
    applyFilter = true;
   //toon = loadShader("ToonFrag.glsl", "ToonVert.glsl");
 }
 if(key == 'n'){
   applyFilter = false;
   resetShader();
  
 }
}