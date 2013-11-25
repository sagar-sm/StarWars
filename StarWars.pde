Galaxy alpha, beta, theta;

void setup(){
  size(1280,720);
  theta = new Galaxy(2000, 2);
  beta = new Galaxy(1500, 3); 
  alpha = new Galaxy(1000, 4);
}

void draw(){
  background(0);
  alpha.display();
  beta.display();
  theta.display();
  if(keyPressed){
    alpha.move();
    beta.move();
    theta.move();
  }
}
