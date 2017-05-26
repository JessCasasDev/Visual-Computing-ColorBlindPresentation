void analysisRes(){
  identifyDaltType();
  activity = 3;
}


void identifyDaltType(){
  float protanopia = 0;
  float deuteranopia = 0;
  int wrong = 0;
  if (results[0] == 1){ //Control, no afecta resultado
    
    } else if(results[0] == 2) {
      
      } else if (results[0] == 3){
        
        }else {
          //Ninguno
  }
  if (results[1] == 1){
    protanopia += 1;
    } else if(results[1] == 2) {
      //Normal
      } else if (results[1] == 3){
        protanopia += 0.5;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[2] == 1){
    //Normal
    } else if(results[2] == 2) {
      protanopia += 0.5;
      } else if (results[2] == 3){
        protanopia += 1;
        }else {
          //daltonismo indeterminado
          wrong += 1;
          
  }
  if (results[3] == 1){
    protanopia += 1;
    } else if(results[3] == 2) {
      protanopia += 0.5;
      } else if (results[3] == 3){
        //Normal
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[4] == 1){
    protanopia += 1;
    } else if(results[4] == 2) {
      //Normal
      } else if (results[4] == 3){
        protanopia += 0.5;
        }else {
          //daltonismo indeterminado
          wrong += 1;
          
  }
  if (results[5] == 1){
    protanopia += 0.5;
    } else if(results[5] == 2) {
      //Normal
      } else if (results[5] == 3){
        protanopia += 1;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[6] == 1){
    protanopia += 1;
    } else if(results[6] == 2) {
      deuteranopia += 0.5;
      } else if (results[6] == 3){
        //Normal
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[7] == 1){
    //Normal
    } else if(results[7] == 2) {
      deuteranopia += 1;
      } else if (results[7] == 3){
        protanopia += 0.5;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[8] == 1){
    //Normal
    } else if(results[8] == 2) {
      protanopia += 1;
      } else if (results[8] == 3){
        protanopia += 1;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[9] == 1){
    //Normal
    } else if(results[9] == 2) {
      deuteranopia += 1;
      } else if (results[9] == 3){
        protanopia += 0.5;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[10] == 1){
    //normal
    } else if(results[10] == 2) {
      protanopia += 0.5;
      } else if (results[10] == 3){
        protanopia += 1;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[11] == 1){
    protanopia += 0.5;
    } else if(results[11] == 2) {
      deuteranopia += 1;
      } else if (results[11] == 3){
        //Normal
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[12] == 1){
    //Normal
    } else if(results[12] == 2) {
      protanopia += 1;
      } else if (results[12] == 3){
        protanopia += 0.5;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[13] == 1){
    deuteranopia += 1;
    } else if(results[13] == 2) {
      protanopia += 0.5;
      } else if (results[13] == 3){
        //Normal
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[14] == 1){
    deuteranopia += 1;
    } else if(results[14] == 2) {
      //Normal
      } else if (results[14] == 3){
        protanopia += 0.5;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[15] == 1){
    deuteranopia += 1;
    } else if(results[15] == 2) {
      //Normal
      } else if (results[15] == 3){
        protanopia += 0.5;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[16] == 1){
    //Normal
    } else if(results[16] == 2) {
      deuteranopia += 1;
      } else if (results[16] == 3){
        protanopia += 0.5;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[17] == 1){
    protanopia += 1;
    } else if(results[17] == 2) {
      deuteranopia += 1;
      } else if (results[17] == 3){
        //Normal
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[18] == 1){
    //Normal
    } else if(results[18] == 2) {
      protanopia += 1;
      } else if (results[18] == 3){
        deuteranopia += 1;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[19] == 1){
    //Normal
    } else if(results[19] == 2) {
      deuteranopia += 1;
      } else if (results[19] == 3){
        protanopia += 1;
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  if (results[20] == 1){
    protanopia += 1;
    } else if(results[20] == 2) {
      deuteranopia += 1;
      } else if (results[20] == 3){
        //Normal
        }else {
          //daltonismo indeterminado
          wrong += 1;
  }
  println("wrong: "+wrong+" - "+wrong/20);
  println("protanopia: "+protanopia+" - "+protanopia/20);
  println("deuteranopia: "+deuteranopia+" - "+deuteranopia/20);
  if (wrong > 16){
    println("Daltonismo indeterminado");
  }
    if (protanopia > deuteranopia){
      println("Hay "+protanopia/20*100+"% de probabilidad de protanopia");
    } else {
      println("Hay "+deuteranopia/20*100+"% de probabilidad de deuteranopia");
    }
}