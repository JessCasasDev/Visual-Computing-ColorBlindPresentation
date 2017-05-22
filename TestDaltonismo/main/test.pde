void test(){
  update();
  buttons();
  images();

}

void images(){
  
  img = loadImage(dir+step+ext);
  image(img,0,0, 500,500);
}

void mousePressed() {
  switch(select){
    case 1:
      results[step] = 1;
      step++;
      break;
    case 2:
      results[step] = 2;
      step++;
      break;
    case 3:
      results[step] = 3;
      step++;
      break;
    case 4:
      results[step] = 4;
      step++;
      break;
  }
  if(step == 21){
    println();
    for(int i = 0; i < 21; i++){
      print(results[i] + " ");
    }
    // Resultado normal        1 2 1 3 2 2 3 1 1 1 1 3 1 3 2 2 1 3 1 1 3
    // Resultado protanope     X 1 3 1 1 3 1 3 3 4 4 4 4 4 4 4 4 1 2 3 1
    // Resultado deuteranope   1
    step = 0;
    activity = 1;
  }
}