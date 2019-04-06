class Face{
  Cubie[] face;
  public Face(char layer){
    switch(layer){
      case 'u':
      face=new Cubie[]{
        cube[0][0][0],cube[1][0][0],
        cube[2][0][0],cube[2][0][1],
        cube[2][0][2],cube[1][0][2],
        cube[0][0][2],cube[0][0][1]
      };
      break;
      case 'd':
       face=new Cubie[]{
        cube[0][2][0],cube[1][2][0],
        cube[2][2][0],cube[2][2][1],
        cube[2][2][2],cube[1][2][2],
        cube[0][2][2],cube[0][2][1]
       };
      break;
      case 'r':
        face=new Cubie[]{
        cube[2][0][0],cube[2][1][0],
        cube[2][2][0],cube[2][2][1],
        cube[2][2][2],cube[2][1][2],
        cube[2][0][2],cube[2][0][1]
       };
      break;
      case 'l':
      face=new Cubie[]{
        cube[0][0][0],cube[0][1][0],
        cube[0][2][0],cube[0][2][1],
        cube[0][2][2],cube[0][1][2],
        cube[0][0][2],cube[0][0][1]
       };
      break;
      case 'f':
      face=new Cubie[]{
        cube[0][0][2],cube[1][0][2],
        cube[2][0][2],cube[2][1][2],
        cube[2][2][2],cube[0][1][2],
        cube[1][2][2],cube[0][2][2]
       };
      break;
      case 'b':
      face=new Cubie[]{
        cube[0][0][0],cube[1][0][0],
        cube[2][0][0],cube[2][1][0],
        cube[2][2][0],cube[0][1][0],
        cube[1][2][0],cube[0][2][0]
       };
      break;
    }
  }
  
  public Cubie[] getFace(){
    return face;
  }  

  void rotateFaceX(){

  }

  void rotateFaceY(){

  }

  void rotateFaceZ(){

  }
}
