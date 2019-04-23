class Cubie {
  PMatrix3D matrix;
  float length;
  boolean highlight=false;
  int x;
  int y;
  int z;
  Face faces[]=new Face[6];
  
  //not all pieces have 6 faces
  Cubie(PMatrix3D matrix,int x,int y, int z) {
    this.matrix=matrix;
    this.x=x;
    this.y=y;
    this.z=z;
    faces[0]=new Face(new PVector(0,0,1),color(0,255,0));
    faces[1]=new Face(new PVector(0,0,-1),color(0,0,255));
    faces[2]=new Face(new PVector(0,1,0),color(255,255,255));
    faces[3]=new Face(new PVector(0,-1,0),color(255,255,102));
    faces[4]=new Face(new PVector(1,0,0),color(255,0,0));
    faces[5]=new Face(new PVector(-1,0,0),color(255,102,0));
  }

  void show() {
    
    noFill();
    stroke(0);
    strokeWeight(0.1);
    pushMatrix(); 
    applyMatrix(matrix);
    box(1);
    for(Face f : faces){
      f.show();
    }
    popMatrix();
  }
  
  void update(int x,int y,int z){
     matrix.reset();
     matrix.translate(x,y,z);
     this.x=x;
     this.y=y;
     this.z=z;  }
}
