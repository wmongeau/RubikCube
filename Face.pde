class Face{
  color c;
  PVector normal;
  public Face(PVector normal,color c){
    this.normal=normal;
    this.c=c;
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
