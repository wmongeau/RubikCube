class Face{
  Cubie[] face;
  public Face(char layer){
    switch(layer){
      case 'u':
      //Done
      //Put corners next to each other, same with edges.
      face=new Cubie[]{
        cube[0][0][0],cube[2][0][0],
        cube[2][0][2],cube[0][0][2],
        cube[1][0][0],cube[2][0][1],
        cube[1][0][2],cube[0][0][1]
      };
      break;
      //Done
      case 'd':
       face=new Cubie[]{
        cube[0][2][0],cube[2][2][0],
        cube[2][2][2],cube[0][2][2],
        cube[1][2][0],cube[2][2][1],
        cube[1][2][2], cube[0][2][1]
       };
      break;
      //Done
      case 'r':
        face=new Cubie[]{
        cube[2][0][0],cube[2][2][0],
        cube[2][2][2],cube[2][0][2],
        cube[2][1][0],cube[2][2][1],
        cube[2][1][2],cube[2][0][1]
       };
      break;
      //Done (ish)
      case 'l':
      face=new Cubie[]{
        cube[0][0][0],cube[0][0][2],
        cube[0][2][2],cube[0][2][0],
        cube[0][1][0],cube[0][0][1],
        cube[0][1][2],cube[0][2][1]    
       };
      break;
      //Done (ish)
      case 'f':
      face=new Cubie[]{
        cube[0][0][2],cube[2][0][2],
        cube[2][2][2],cube[0][2][2],
        cube[1][0][2],cube[2][1][2],
        cube[1][2][2],cube[0][1][2]
       };
      break;
      //Done(ish)
      case 'b':
      face=new Cubie[]{
        cube[0][0][0],cube[0][2][0],
        cube[2][2][0],cube[2][0][0],
        cube[1][0][0],cube[0][1][0],
        cube[1][2][0],cube[2][1][0]        
       };
      break;
    }
  }
  
  public Cubie[] getFace(){
    return face;
  }  
  //Sounds good, doesn't work.
  //Edges and corners are paired 4x4, so 1=0,2=1,3=2,0=3 for corners
  //5=4,6=5,7=6,4=7 for edges  clockwise
  //Opposite direction for corners; 0=1,1=2,2=3,3=0
  //for edges; 4=5,5=6,6=7,7=4
  
  //I think the problem is around the temp values
  void rotateFace(boolean clockwise){
      ColorConfig tempCorner=null;
      ColorConfig tempEdge=null;
      if(clockwise){
        for(int i=face.length-1;i>=0;i--){
          if(i==3){
            tempCorner=face[i].getConfig();
          }
          if(i==7){
            tempEdge=face[i].getConfig();
          }
          if(i!=4&&i!=0){
            face[i].copyConfig(face[i-1].getConfig());
          }
          else if(i==4){
            face[i].copyConfig(tempEdge);
          }
          else if(i==0){
            face[i].copyConfig(tempCorner);
          }
        }
      }
      else{
        for(int i=0;i<face.length;i++){
          if(i==0){
            tempCorner=face[i].getConfig();
          }
          if(i==4){
            tempEdge=face[i].getConfig();
          }
          if(i!=3&&i!=7){
            face[i].copyConfig(face[i+1].getConfig());
          }
          else if(i==3){
            face[i].copyConfig(tempCorner);
          }
          else if(i==7){
            face[i].copyConfig(tempEdge);
          }
      }
    }
  }
}
