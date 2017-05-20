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
    step = 0;
    activity = 1;
  }
}