class Rocket{
  
  float x;
  float y;
  float speed;
  float maxSpeed = 10;
  float minSpeed = 5;
  float climaxY;
  
  Rocket(){
  x = random(width);
  y = height; 
  climaxY = random(height/2);
  speed = random(minSpeed,maxSpeed);
  }
  
  void shoot(){
  y = y - speed;
  
  if(y <= climaxY){
  y = height;

  speed = random(minSpeed,maxSpeed);
  }
  }
  
  void display(){
  fill (255,0,255);
  ellipse(x,y,10,10);
  
  }

}
