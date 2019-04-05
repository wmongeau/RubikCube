import peasy.*;

PeasyCam cam;
int dimension=3;
Cubie[][][] cube=new Cubie[dimension][dimension][dimension];

//UP,DOWN,LEFT,RIGHT,FRONT,BACK
final int U=0;
final int D=1;
final int L=2;
final int R=3;
final int F=4;
final int B=5;

color[] colors={
  #FFFFFF,#FFFF00,
  #FF0000,#FFA500,
  #00FF00, #0000FF,
  #000000
};


void setup(){
  size(600, 600, P3D); 
  cam = new PeasyCam(this, 400);
  for (int i = 0; i < dimension; i++) {
    for (int j = 0; j < dimension; j++) {
      for (int k = 0; k < dimension; k++) {
        float len = 50;
        float offset = (dimension - 1)* len * 0.5;
        float x = len * i - offset;
        float y = len * j - offset;
        float z = len * k - offset;
        cube[i][j][k] = new Cubie(x, y, z, len);
      }
    }
  }
 // cube[0][1][0].highlight();
}

void draw(){
  background(51);
  for(int i=0;i<dimension;i++){
    for(int j=0;j<dimension;j++){
      for(int k=0;k<dimension;k++){
        cube[i][j][k].show();  //<>//
      }
    }
  }  
}

//UDLRFB
public void rotate(char face,boolean clockwise){
    switch(face){
      case 'u':
      if(clockwise){
        for(int i=0;i<7;i++){
       //   cubie[][][]
        }
      }
      else{
      }
      break;
      case 'd':
      break;
      case 'l':
      break;
      case 'r':
      break;
      case 'f':
      break;
      case 'b':
      break;
    
    }
}
