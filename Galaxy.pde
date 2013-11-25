class Galaxy {
  int population;
  int level;
  float[] x = new float[500];
  float[] y = new float[500];
  
  Galaxy(int _p, int _l){
    this.population = _p;
    x = new float[population];
    y = new float[population];
    level = _l;
    
    for(int i = 0; i < population; i++){
      x[i] = random(-2*width, 2*width);
      y[i] = random(-2*height, 2*height);
    }
  }
  
  void display(){
    for(int i = 0; i < population; i++)
      ellipse(x[i], y[i], level, level);
  }
  
  void move(){//PVector vx, PVector vy){
    if(keyPressed){
      switch(key){
        case 'w':
          for(int i = 0; i < population; i++){
            y[i] += 2*level;
          }
          break;
        case 'a':
          for(int i = 0; i < population; i++){
            x[i] -= 2*level;
          }
          break;
        case 's':
          for(int i = 0; i < population; i++){
            y[i] -= 2*level;
          }
          break;
        case 'd':
          for(int i = 0; i < population; i++){
            x[i] += 2*level;
          }
          break;
      }
    }
  }
}
