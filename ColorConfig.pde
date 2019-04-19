
class ColorConfig{
  int [] colorsConfig;

  //Cube starts with the colors in the same ored as the color array
  public ColorConfig(){
    colorsConfig=new int[]{0,1,2,3,4,5};        
  }
  public ColorConfig(int c){
    colorsConfig=new int[]{c,c,c,c,c,c};
  }
  public int getValue(int i){
     return colorsConfig[i];
  }
  
  public void setValue(int face,int value){
    colorsConfig[face]=value;
  }
  
  public int length(){
    return colorsConfig.length;  
  }
  
  public String toString(){
    return " UP: "+colorsConfig[0]+" DOWN: "+colorsConfig[1]+" Left: "+colorsConfig[2]+" Right: "+colorsConfig[3]+" FRONT: "+colorsConfig[4]+" BACK: "+colorsConfig[5];
  }
}
