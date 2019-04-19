import peasy.*; //<>// //<>//

PeasyCam cam;
int dimension=3;
final boolean CLOCKWISE=true;
final boolean COUNTERCLOCKWISE=false;
Cubie[][][] cube=new Cubie[dimension][dimension][dimension];

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
  cube[0][0][0].highlight();
}

void draw() {
  background(51);
  for (int i=0; i<dimension; i++) {
    for (int j=0; j<dimension; j++) {
      for (int k=0; k<dimension; k++) {
        cube[i][j][k].show();
      }
    }
  }
}

//UDLRFB
public void rotate(char face, boolean clockwise) {
  switch(face) {
  case 'u':
    Face upper=new Face('u');
    Cubie[] u=upper.getFace();
    for (Cubie c : u) {
      c.rotateColorZ(clockwise);
    }
    upper.rotateFace(clockwise);

    break;
  case 'd':
    Face down = new Face('d');
    Cubie[] d=down.getFace();
    for (Cubie c : d) {
      c.rotateColorZ(clockwise);
    }
    down.rotateFace(clockwise);

    break;
  case 'l':
    Face left=new Face('l');
    Cubie[] l=left.getFace();
    for (Cubie c : l) {
      c.rotateColorY(clockwise);
    }
    left.rotateFace(clockwise);

    break;
  case 'r':
    Face right=new Face('r');
    Cubie[] r=right.getFace();
    for (Cubie c : r) {
      c.rotateColorY(clockwise);
    }
    right.rotateFace(clockwise);

    break;
  case 'f':
    Face front=new Face('f');
    Cubie[] f=front.getFace();
    for (Cubie c : f) {
      c.rotateColorX(clockwise);
    }
    front.rotateFace(clockwise);

    break;
  case 'b':
    Face back=new Face('b');
    Cubie[] b=back.getFace();
    for (Cubie c : b) {
      c.rotateColorX(clockwise);
    }
    back.rotateFace(clockwise);

    break;
  }
}

void keyPressed() {
  switch(key) {
  case 'u':
    rotate('u', true);
    break;
  case 'U':
    rotate('u', false);
    break;
  case 'd':
    rotate('d', false);
    break;
  case 'D':
    rotate('d', true);
    break;
  case 'r':
    rotate('r', false);
    break;
  case 'R':
    rotate('r', true);
    break;
  case 'l':
    rotate('l', true);
    break;
  case 'L':
    rotate('l', false);
    break;   
  case 'f':
    rotate('f', false);
    break;
  case 'F':
    rotate('f', true);
    break;
  case 'b':
    rotate('b', true);
    break;
  case 'B':
    rotate('b', false);
    break;
  }
}
