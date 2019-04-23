class Face{
  color c;
  PVector normal;
  public Face(PVector normal,color c){
    this.normal=normal;
    this.c=c;
  }
  
  public void turnZ(float angle){
    
      PVector v2=new PVector();
      v2.x=round(normal.x*cos(angle)-normal.y*sin(angle));
      v2.y=round(normal.x*sin(angle)+normal.y*cos(angle));
      v2.z=round(normal.z);
      normal=v2;
  }
  
  public void turnY(float angle){
     PVector v2=new PVector();
      v2.x=round(normal.x*cos(angle)-normal.z*sin(angle));
      v2.z=round(normal.x*sin(angle)+normal.z*cos(angle));
      v2.y=round(normal.y);
      normal=v2;
  }
  
  public void turnX(float angle){
     PVector v2=new PVector();
      v2.y=round(normal.y*cos(angle)-normal.z*sin(angle));
      v2.z=round(normal.y*sin(angle)+normal.z*cos(angle));
      v2.x=round(normal.x);
      normal=v2;
  }
  
  public void show(){
    pushMatrix();
    fill(c);
    noStroke();
    rectMode(CENTER);
    translate(normal.x*0.5,normal.y*0.5,normal.z*0.5);
    if(abs(normal.z)>0){
      rotateZ(HALF_PI);
    }
    else if(abs(normal.x)>0){
      rotateY(HALF_PI);
    }
    else{
      rotateX(HALF_PI);
    }
    square(0,0,1);
    popMatrix();
  }
}
