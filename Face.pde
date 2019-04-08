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

  void rotateFace(boolean clockwise){
      Cubie temp=null;
      if(clockwise){
        for(int i=0;i<face.length;i++){
          if(i==0){
          temp=face[0];
          }
          if(i!=face.length-1){
            face[i]=face[i+1];
          }
          else{
            face[i]=temp;
          }
        }
      }
      else{
        for(int i=face.length-1;i>=0;i--){
         if(i==face.length-1){
           temp=face[i];
         }
         if(i!=0){
           face[i]=face[i-1];
         }
         else{
           face[i]=temp;
         }
      }
    }
  }
}
