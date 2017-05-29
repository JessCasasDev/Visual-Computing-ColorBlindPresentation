import processing.video.*;
import javax.swing.JOptionPane; 
import javax.swing.JDialog; 

int bX1, bX2, bX3, bX4;
int bY1Menu, bY2Menu, bY3Menu, bY4Menu;
int bY, bX;
int bSX, bSY;
int step;
int select;
int activity;
int[] results;
int[] imageRDeu;
int[] imageRPro;
Capture cam;
String[] cameras = Capture.list();

float divi;
float bit;
float protanopia;
float deuteranopia;
PImage img;

String[][] text;
String dir = "DaltImg/";
String ext = ".png";

color over = color(10,10,10,40);
color base = color(255);

void setup(){
  size(500, 600, P3D);
  imaR = 0;
  select = 0;
  bSX = 80;
  bSY = 50;
  divi = width/4;
  bit = divi/5;
  print(divi);
  bX1 = (int)(divi*0 + bit);
  bX2 = (int)(divi*1 + bit);
  bX3 = (int)(divi*2 + bit);
  bX4 = (int)(divi*3 + bit);
  bX = width-bSX*2;
  step = 0;
  activity = 0;
  results = new int[21];
  bY = height-bSY*2;
  divi = height/9;
  bY1Menu = (int)(divi*1 + bit + 150);
  bY2Menu = (int)(divi*2 + bit + 150);
  bY3Menu = (int)(divi*3 + bit + 150);
  bY4Menu = (int)(divi*4 + bit + 150);
  loadText();
  
   if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(i, cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }     
}

void draw(){
  switch(activity){
    case 0: menu();
    break;
    case 1: test();
    break;
    case 2: analysisRes();
    break;
    case 3: videoRes();
    break;
  }
  if (cam.available() == true) {
    cam.read();
  }
}

void mousePressed() {
  if(activity == 0){
    activity = select;
    if(activity == 4) exit();
    clear();
    background(255);
  } else if(activity == 3){
    imaR++;
  }  else {
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
      activity = 2;
    }
  }
}