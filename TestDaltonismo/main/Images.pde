int imaR;
void imagesRes(){
  clear();
  if(protanopia > deuteranopia){
    imageRPro = new int[]{1,2,4,6};
    if(imaR == imageRPro.length) activity = 4;
    else { step = imageRPro[imaR];
      img = loadImage(dir+step+ext);
      image(img,0,0, 500,500);
    }
  }else {
    imageRPro = new int[]{5,6,7,8};
    if(imaR == imageRDeu.length) activity = 4;
    else { step = imageRDeu[imaR];
      img = loadImage(dir+step+ext);
      image(img,0,0, 500,500);
    }
  }
}