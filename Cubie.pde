class Cubie {
  PVector position;
  float length;
  ColorConfig config;

  Cubie(float x, float y, float z, float len_) {
    position = new PVector(x, y, z);
    length = len_;
    config=new ColorConfig();
  }

  void highlight(){
    for(int i=0;i<config.length();i++){
      config.setValue(i,6);
    }
  }
  void show() {
    fill(255);
    stroke(0);
    strokeWeight(8);
    pushMatrix(); 
    translate(position.x, position.y, position.z);
    beginShape(QUADS);
    float r = length / 2;

    // z-fixed
    fill(colors[config.getValue(B)]);
    vertex(-r, -r, -r);
    vertex(r, -r, -r);
    vertex(r, r, -r);
    vertex(-r, r, -r);

    fill(colors[config.getValue(F)]);
    vertex(-r, -r, r);
    vertex(r, -r, r);
    vertex(r, r, r);
    vertex(-r, r, r);

    // y-fixed
    fill(colors[config.getValue(D)]);
    vertex(-r, -r, -r);
    vertex(r, -r, -r);
    vertex(r, -r, r);
    vertex(-r, -r, r);

    fill(colors[config.getValue(U)]);
    vertex(-r, r, -r);
    vertex(r, r, -r);
    vertex(r, r, r);
    vertex(-r, r, r);


    // x-fixed
    fill(colors[config.getValue(L)]);
    vertex(-r, -r, -r);
    vertex(-r, r, -r);
    vertex(-r, r, r);
    vertex(-r, -r, r);

    fill(colors[config.getValue(R)]);
    vertex(r, -r, -r);
    vertex(r, r, -r);
    vertex(r, r, r);
    vertex(r, -r, r);

    endShape();
    popMatrix();
  }
}
