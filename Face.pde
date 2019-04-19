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
  //Maybe try to not rotate cubies to pinpoint problem
  void rotateFace(boolean clockwise){
      ColorConfig tempCorner=null;
      ColorConfig tempEdge=null;
      if(clockwise){
        println(face[0].getConfig());
        println();
        tempCorner=face[0].getConfig();
        println(tempCorner);
        println();
        face[0].copyConfig(face[3].getConfig());
        face[3].copyConfig(face[2].getConfig());
        face[2].copyConfig(face[1].getConfig());
        face[1].copyConfig(tempCorner);
        tempEdge=face[4].getConfig();
        face[4].copyConfig(face[7].getConfig());
        face[7].copyConfig(face[6].getConfig());
        face[6].copyConfig(face[5].getConfig());
        face[5].copyConfig(tempEdge);
        
      }
      else{
       
        tempCorner=face[0].getConfig();
        face[0].copyConfig(face[1].getConfig());
        face[1].copyConfig(face[2].getConfig());
        face[2].copyConfig(face[3].getConfig());
        face[3].copyConfig(tempCorner);
        tempEdge=face[4].getConfig();
        face[4].copyConfig(face[5].getConfig());
        face[5].copyConfig(face[6].getConfig());
        face[6].copyConfig(face[7].getConfig());
        face[7].copyConfig(tempEdge);
      }
    }
  }
