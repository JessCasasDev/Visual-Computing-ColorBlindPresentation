int bX1, bX2, bX3, bX4;
int bY;
int bSX, bSY;
int step;
int select;
int activity;
int[] results;

float divi;
float bit;
PImage img;

String[][] text;
String dir = "DaltImg/";
String ext = ".png";

color over = color(10,10,10,40);
color base = color(255);

void setup(){
  size(500, 600);
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
  
  step = 0;
  activity = 0;
  results = new int[21];
  bY = height-bSY*2;
  loadText();
}

void draw(){
  switch(activity){
    case 0: test();
    break;
    case 1: analysisRes();
    break;
    case 2: videoRes();
    break;
  }
}