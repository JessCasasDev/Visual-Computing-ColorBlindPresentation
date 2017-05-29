int imaR;
void imagesRes(){
  clear();
  if(protanopia > deuteranopia){
    dir = "Proto/Pro";
    imageRPro = new int[]{0,1,2};
    if(imaR == imageRPro.length) activity = 4;
    else { step = imageRPro[imaR];
      img = loadImage(dir+step+ext);
      image(img,0,0, 500,500);
    }
  }else {
    dir = "Deutero/Deu";
    imageRPro = new int[]{0,1,2};
    if(imaR == imageRDeu.length) activity = 4;
    else { step = imageRDeu[imaR];
      img = loadImage(dir+step+ext);
      image(img,0,0, 500,500);
    }
  }
}