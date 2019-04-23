import peasy.*; //<>// //<>//

PeasyCam cam;
int dimension=3;

Cubie[]cube=new Cubie[(int)pow(dimension,dimension)];

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
}

//try to make this generic
void turnZ(int index, int dir){
  for(int i=0;i<cube.length;i++){
    if(cube[i].z==index){
       PMatrix2D face=new PMatrix2D();
       face.rotate(dir*HALF_PI);
       face.translate(cube[i].x,cube[i].y);
       cube[i].update(round(face.m02),round(face.m12),round(cube[i].z));
       cube[i].turnFacesZ(dir);
     }
  }
}
void turnY(int index,int dir){
  for(int i=0;i<cube.length;i++){
    if(cube[i].y==index){
       PMatrix2D face=new PMatrix2D();
       face.rotate(dir*HALF_PI);
       face.translate(cube[i].x,cube[i].z);
       cube[i].update(round(face.m02),round(cube[i].y),round(face.m12));
        cube[i].turnFacesY(dir);
     }
  }
}
void turnX(int index,int dir){
  for(int i=0;i<cube.length;i++){
    if(cube[i].x==index){
       PMatrix2D face=new PMatrix2D();
       face.rotate(dir*HALF_PI);
       face.translate(cube[i].y,cube[i].z);
       cube[i].update(cube[i].x,round(face.m02),round(face.m12));
       cube[i].turnFacesX(dir);
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
    turnY(-1,1);
    break;
  case 'U':
    turnY(-1,-1);
    break;
  case 'd':
    turnY(1,-1);
    break;
  case 'D':
    turnY(1,1);
    break;
  case 'r':
    turnX(1,1);
    break;
  case 'R':
    turnX(1,-1);
    break;
  case 'l':
    turnX(-1,-1);
    break;
  case 'L':
      turnX(-1,1);
    break;   
  case 'f':
    turnZ(1,1);
    break;
  case 'F':
    turnZ(1,-1);
    break;
  case 'b':
    turnZ(-1,-1);
    break;
  case 'B':
    turnZ(-1,1);
    break;
  }
}
