void test(){
  update();
  buttons();
  images();

}

void images(){
  img = loadImage(dir+step+ext);
  image(img,0,0, 500,500);
}