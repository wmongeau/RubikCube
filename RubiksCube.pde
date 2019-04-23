import peasy.*; //<>// //<>//

PeasyCam cam;
int dimension=3;
final boolean CLOCKWISE=true;
final boolean COUNTERCLOCKWISE=false;
Cubie[]cube=new Cubie[(int)pow(dimension,dimension)];
Face upper;
Face down;
Face left;
Face right;
Face front;
Face back;
  
//UP,DOWN,LEFT,RIGHT,FRONT,BACK
final int U=0;
final int D=1;
final int L=2;
final int R=3;
final int F=4;
final int B=5;
//white,yellow,red,orange,green,blue
color[] colors={
  #FFFFFF, #FFFF00, 
  #FF0000, #FFA500, 
  #00FF00, #0000FF, 
  #000000
};


void setup() {
  size(600, 600, P3D); 
  cam = new PeasyCam(this, 400);
  int counter =0;
  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <=1 ; y++) {
      for (int z = -1; z <=1; z++) {
        PMatrix3D matrix=new PMatrix3D();
        matrix.translate(x,y,z);
        cube[counter] = new Cubie(matrix,x,y,z);
        counter++;
      }
    }
  }
  cube[0].highlight=true;
  cube[2].highlight=true;
   cube[18].highlight=true;
  cube[24].highlight=true;
}

//try to make this generic
void turnZ(int index){
  for(int i=0;i<cube.length;i++){
    if(cube[i].z==index){
       PMatrix2D face=new PMatrix2D();
       face.rotate(HALF_PI);
       face.translate(cube[i].x,cube[i].y);
       cube[i].update(round(face.m02),round(face.m12),round(cube[i].z));
     }
  }
}
void turnY(int index){
  for(int i=0;i<cube.length;i++){
    if(cube[i].y==index){
       PMatrix2D face=new PMatrix2D();
       face.rotate(HALF_PI);
       face.translate(cube[i].x,cube[i].z);
       cube[i].update(round(face.m02),round(cube[i].y),round(face.m12));
     }
  }
}
void turnX(int index){
  for(int i=0;i<cube.length;i++){
    if(cube[i].x==index){
       PMatrix2D face=new PMatrix2D();
       face.rotate(HALF_PI);
       face.translate(cube[i].y,cube[i].z);
       cube[i].update(cube[i].x,round(face.m02),round(face.m12));
     }
  }
}

void draw() {
  background(51);
  scale(50);
  for (int i=0; i<cube.length; i++) {
        cube[i].show();
   }
}



void keyPressed() {
  switch(key) {
  case 'u':
    turnY(-1);
    break;
  case 'U':
    
    break;
  case 'd':
    turnY(1);
    break;
  case 'D':
    
    break;
  case 'r':
    turnX(1);
    break;
  case 'R':
    
    break;
  case 'l':
    turnX(-1);
    break;
  case 'L':
    
    break;   
  case 'f':
    turnZ(1);
    break;
  case 'F':
    
    break;
  case 'b':
    turnZ(-1);
    break;
  case 'B':
    
    break;
  }
}
